open Batteries
open Option
open List
open Query
open Language
open Language_table
open Pretty_printerTable
open Eval_e
open Eval_formula

exception Test_Failed of string

let env : ((cname * query) list) ref = ref []

let rowsList_filter (lan : language) (attributes : attrname list) (f : Query.formula) (flagALL : bool) (rows : rowDB list) :  rowDB list = 
	let count = List.length rows in 
(*	let _ = print_endline ("count: " ^ string_of_int count ^ " flagAll = " ^ string_of_bool flagALL) in *)
	let newRows : rowDB list = List.filteri (fun position row -> (eval_formula lan attributes f count position row)) rows in 
(*	let _ = print_endline("after filteri: " ^ dump newRows) in *)
	if flagALL 
		then if newRows = rows then rows else [] (* check if table is the same after filter, with equality = *)
		else newRows

let table_filter (lan : language) (table : tableDB) (f : Query.formula) : tableDB = 
	let newRows = rowsList_filter lan table.attributes f false table.data in (* WHERE calls rowsList_filter with false flagALL *)
		{ attributes = table.attributes ; data = newRows }

let groups_filter (lan : language) (groups : groupsDB) (having: havingOption) :  groupsDB = 
	let having = get having in 
	let formula = fst having in 
	let flagALL = is_some (snd having) in 
	let newListsOfRows : (rowDB list) list = List.map (rowsList_filter lan groups.attributes formula flagALL) groups.groups in (* HAVING ALL that fail, return a group [], it is ok *)
	 { attributes = groups.attributes ; groups = newListsOfRows }

let column_select (lan : language) (eStar : eStar) (attributes : attrname list) (count : int) (position : int) (row : rowDB) (column : column) : e = 
	let exp = fst column in eval_e lan attributes count position row exp	

let row_select (lan : language) (eStar : eStar) (attributes : attrname list) (count : int) (position : int) (row : rowDB) : rowDB = 
	match eStar with | STAR -> row 
	| COLUMNS(columns) -> List.map (column_select lan eStar attributes count position row) columns

let table_select (lan : language) (eStar : eStar) (attributes : attrname list) (rows : rowDB list) : rowDB list = 
	let count = (List.length rows) in 
	List.mapi (row_select lan eStar attributes count) rows

let groups_select_and_return_table (lan : language) (eStar : eStar) (groups : groupsDB) : tableDB = 
	let newListsOfRows : (rowDB list) list = List.map (table_select lan eStar groups.attributes) groups.groups in 
	let newGroups = { (groups_initialize (eStar_to_attributes eStar groups.attributes)) with groups = newListsOfRows } in 
	 groups_to_table newGroups

let row_expand_ASROWS (attribute : attrname) (starBool : bool) (index : int) (row : rowDB) : rowDB list = 
	let listToExpand : e = List.nth row index in 
	if not (e_isList listToExpand) then raise(Failure("row_expand_ASROWS: asked to expand a ROWS LIST but it is not a LIST")) else 
	let listToExpand : e list = e_getListOFes listToExpand in 
	let rowWithoutROWSattribute = List.filteri (fun i row -> not (i = index)) row in 
	 if starBool then List.map (fun e -> rowWithoutROWSattribute @ [e]) listToExpand
             else List.mapi (fun i e -> rowWithoutROWSattribute @ [e ; INT i]) listToExpand
		

let table_expand_ASROWS (eStar : eStar) (table : tableDB) : tableDB = match eStar with 
| STAR -> table
| COLUMNS(columns) -> 
					let attribute_ROWS : attrname list = List.map column_to_attribute (List.filter column_is_ROWS columns) in 
					let attributeWithrows = List.filter column_is_ROWS columns in 
					if attributeWithrows = [] then table else
					if (List.length attributeWithrows) > 1  then raise(Failure("table_expand_ASROWS: Only one AS ROWS column is support at the moment")) 	
					else let (attribute_ROWS, star) : (attrname * rowsOption) = column_to_pair (List.hd attributeWithrows) in 
					let starBool = get star in 
					let attributes : attrname list = List.map column_to_attribute columns in 
					let indexes_of_ROWS = find_indexes attributes attribute_ROWS [] 0 in 
					if not ((List.length indexes_of_ROWS) = 1) then raise(Failure("table_expand_ASROWS: attribute with ROWS found 0, or more than once in attributes")) else	
					let index_of_ROWS : int = List.hd indexes_of_ROWS in 
					let rowsWithROWSexpanded : rowDB list = List.concat (List.map (row_expand_ASROWS attribute_ROWS starBool index_of_ROWS) table.data) in 
					let attribute_NOT_ROWS : attrname list = List.map column_to_attribute (List.filter column_isNOT_ROWS columns) in 
					if starBool then table_make (attribute_NOT_ROWS @ [attribute_ROWS]) rowsWithROWSexpanded
					        else table_make (attribute_NOT_ROWS @ [attribute_ROWS ; attribute_add_num attribute_ROWS]) rowsWithROWSexpanded  
					
let rec language_table_lookupByID (lan : language) (lanTbl : language_table) (tableID : table) : tableDB = match tableID with 
| GRAMMAR -> lanTbl.grammar
| GRAMMARINFO -> lanTbl.grammar_info
| DECLARATIONP -> lanTbl.declarationp
| RULE -> lanTbl.rule
| CAT(cname) -> (* raise(Failure(cname ^ dump !env ^ dump (execQuery lan lanTbl (List.assoc cname (!env))))) *)
if List.mem_assoc cname (!env) then List.last (execQuery lan lanTbl (List.assoc cname (!env))) else 
List.last (execQuery lan lanTbl (SELECT(None, COLUMNS([ID("term"),None]), [TABLE(GRAMMAR)], Some(EQUAL(ID("category"),ID(cname))), None))) (* SELECT term FROM grammar WHERE category = Expression *)
and execQuery (lan : language) (lanTbl : language_table) (query : query) : tableDB list = match query with 
	| TABLE(tableID) -> [ language_table_lookupByID lan lanTbl tableID ] 
	| SELECT(distinctOption,eStar,queryList,whereOption,groupOption) -> 
		let tablesInFrom = 	List.map List.last (List.map (execQuery lan lanTbl) queryList) in 
		let productOfTablesInFrom = List.fold_left table_product (List.hd tablesInFrom) (List.tl tablesInFrom) in 
		let tableAfterWhere = if is_none whereOption then productOfTablesInFrom else table_filter lan productOfTablesInFrom (get whereOption)  in 
		let groupsAfterGroup : groupsDB = if is_none groupOption then table_makeOneGroup tableAfterWhere else groups_groupBy (table_makeOneGroup tableAfterWhere) (fst (get groupOption)) in 
		let groupsAfterHaving : groupsDB = if is_none groupOption then groupsAfterGroup else if is_none (snd (get groupOption)) then groupsAfterGroup else groups_filter lan groupsAfterGroup (snd (get groupOption)) in 
		(* let _ = print_endline("groupsAfterHaving = " ^ dump groupsAfterHaving) in *)
		let tableAfterSelect : tableDB = groups_select_and_return_table lan eStar groupsAfterHaving in 
		let tableExpandedForASROWS : tableDB = table_expand_ASROWS eStar tableAfterSelect in 
			(* tableAfterSelect *)
			[productOfTablesInFrom ; tableAfterWhere ; table_make groupsAfterGroup.attributes (List.concat (groupsAfterGroup.groups)) ; table_make groupsAfterGroup.attributes (List.concat (groupsAfterHaving.groups)) ; tableAfterSelect ; tableExpandedForASROWS]
	| UNION(q1,q2) -> let table1 = List.last (execQuery lan lanTbl q1) in let table2 = List.last (execQuery lan lanTbl q2) in 
						if not (table1.attributes = table2.attributes) then raise(Failure("UNION: Given two tables with different attributes: " ^ dump table1.attributes ^ dump table2.attributes)) else 
							let newRows = table1.data @ table2.data  in 
							let unionTable = table_make table1.attributes newRows in 
							[unionTable ; unionTable ; unionTable ; unionTable ; unionTable ; unionTable]
	| EXCEPT(q1,q2) -> let table1 = List.last (execQuery lan lanTbl q1) in let table2 = List.last (execQuery lan lanTbl q2) in 
						if not (table1.attributes = table2.attributes) then raise(Failure("EXCEPT: Given two tables with different attributes: " ^ dump table1.attributes ^ dump table2.attributes)) else 
							let newRows = List.filter (fun row -> not (List.mem row table2.data)) table1.data in 
							let exceptTable = table_make table1.attributes newRows in 
							[exceptTable ; exceptTable ; exceptTable ; exceptTable ; exceptTable ; exceptTable]
	| INTERSECT(q1,q2) -> let table1 = List.last (execQuery lan lanTbl q1) in let table2 = List.last (execQuery lan lanTbl q2) in 
						if not (table1.attributes = table2.attributes) then raise(Failure("EXCEPT: Given two tables with different attributes: " ^ dump table1.attributes ^ dump table2.attributes)) else 
							let newRows = List.filter (fun row -> List.mem row table2.data) table1.data  in 
							let interscetTable = table_make table1.attributes newRows in 
							[interscetTable ; interscetTable ; interscetTable ; interscetTable ; interscetTable ; interscetTable]
	| DEFINE(name,q) -> let _ = env :=  (name,q) :: (!env) in []
	| INSERT(q1,q2) -> raise(Failure("INSERT: Not implemented yet"))
	| TEST(EMPTY(q)) -> let table = List.last (execQuery lan lanTbl q) in if table.data = [] then [table ; table ; table ; table ; table ; table] else raise(Test_Failed(print_table table)) 
	| TEST(CONTAINS(q1,q2)) -> let table1 = List.last (execQuery lan lanTbl q1) in let table2 = List.last (execQuery lan lanTbl q2) in  
						 if table_contains table1 table2 then [table1 ; table1 ; table1 ; table1 ; table1 ; table1] else raise(Test_Failed(print_table table1 ^ "\n\n" ^ print_table table2)) 
 	| TEST(TEQUAL(q1,q2)) -> let table1 = List.last (execQuery lan lanTbl q1) in let table2 = List.last (execQuery lan lanTbl q2) in  
						 if table_contains table1 table2 && table_contains table2 table1 then [table1 ; table1 ; table1 ; table1 ; table1 ; table1] else raise(Test_Failed(print_table table1 ^ "\n\n\n" ^ print_table table2)) 
						 (* if table1 = table2 then [table1 ; table1 ; table1 ; table1 ; table1 ; table1] else raise(Test_Failed(print_table table1 ^ "\n\n\n" ^ print_table table2)) 
						 *)
	| TEST(TNOT(t)) -> let tableWithBool = (try (true, List.last (execQuery lan lanTbl (TEST(t)))) with Test_Failed(s) -> (false, emptyTable))
                        in let table = snd tableWithBool in let tables = [table ; table ; table ; table ; table ; table] in 
						if fst tableWithBool then raise(Test_Failed(print_table (List.last tables))) else tables
	| TEST(DISJOINT(q1,q2)) -> let table1 = List.last (execQuery lan lanTbl q1) in let table2 = List.last (execQuery lan lanTbl q2) in  
	 					 if table_disjoint table1 table2 then [table1 ; table1 ; table1 ; table1 ; table1 ; table1] else raise(Test_Failed(print_table table1 ^ "\n\n" ^ print_table table2)) 
	| TEST(DISTINCTROWS(q)) -> let table = List.last (execQuery lan lanTbl q) in if table_distinctRows table then [table ; table ; table ; table ; table ; table] else raise(Test_Failed(print_table table)) 
	| TEST(TAND(t1,t2)) -> let table1WithBool = (try (true, List.last (execQuery lan lanTbl (TEST(t1)))) with Test_Failed(s) -> (false, emptyTable)) in 
							if not(fst table1WithBool) then raise(Test_Failed(print_table (snd table1WithBool))) 
						    else 
							 let table2WithBool = (try (true, List.last (execQuery lan lanTbl (TEST(t2)))) with Test_Failed(s) -> (false, emptyTable)) in 
							if not(fst table2WithBool) then raise(Test_Failed(print_table (snd table2WithBool))) 
						    else [emptyTable ; emptyTable ; emptyTable ; emptyTable ; emptyTable ; emptyTable]
	| TEST(TOR(t1,t2)) -> let table1WithBool = (try (true, List.last (execQuery lan lanTbl (TEST(t1)))) with Test_Failed(s) -> (false, emptyTable)) in 
							if fst table1WithBool then [emptyTable ; emptyTable ; emptyTable ; emptyTable ; emptyTable ; emptyTable]
						    else 
							 let table2WithBool = (try (true, List.last (execQuery lan lanTbl (TEST(t2)))) with Test_Failed(s) -> (false, emptyTable)) in 
							if fst table2WithBool then [emptyTable ; emptyTable ; emptyTable ; emptyTable ; emptyTable ; emptyTable]
						    else raise(Test_Failed(print_table (snd table2WithBool))) 
(* 
	| TEST(DISJOINT(q1,q2)) -> let table1 = List.last (execQuery lan lanTbl q1) in let table2 = List.last (execQuery lan lanTbl q2) in  
						if not(table_contains table1 table2) && not(table_contains table2 table1) then [emptyTable ; emptyTable ; emptyTable ; emptyTable ; emptyTable ; emptyTable] else raise(Test_Failed(print_table table1 ^ "\n\n\n" ^ print_table table2)) 
						(*  if (not(subtable table1 table2) || not(subtable table2 table1)) then [emptyTable ; emptyTable ; emptyTable ; emptyTable ; emptyTable ; emptyTable] else raise(Test_Failed(print_table table1 ^ "\n\n\n" ^ print_table table2)) 
							*)
	
					if attribute_ROWS = [] then table else
					if (List.length attribute_ROWS) > 1  then raise(Failure("table_expand_ASROWS: Only one AS ROWS column is support at the moment")) else	
					let attribute_ROWS : attrname = List.hd attribute_ROWS in 
	
		let productOfTablesInFrom = List.fold_left table_product (List.hd tablesInFrom) (List.tl tablesInFrom) in 
		let tableAfterWhere = if is_none whereOption then productOfTablesInFrom else let a = try (get whereOption) with | _ -> raise(Failure("a")) in table_filter lan productOfTablesInFrom (get whereOption)  in 
		let groupsAfterGroup : groupsDB = if is_none groupOption then table_makeOneGroup tableAfterWhere else let a = try (get groupOption) with | _ -> raise(Failure("b")) in table_groupBy tableAfterWhere (fst (get groupOption)) in 
		let groupsAfterHaving : groupsDB = if is_none groupOption && is_none (snd (get groupOption)) then groupsAfterGroup else let a = try (snd (get groupOption)) with | _ -> raise(Failure("c")) in groups_filter lan groupsAfterGroup (snd (get groupOption)) in 
		let tableAfterSelect : tableDB = groups_select lan eStar groupsAfterHaving in 
			tableAfterSelect
	
	 *)