open Batteries
open List
open Option
open Language
open Query

(*
	TODO:

let table_filter (table : tableDB) (f : formula) :  tableDB = table
let table_groupBy (table : tableDB) (ids : id list) : groupsDB = [table]
let groups_filter (groups : groupsDB) (having: havingOption) :  groupsDB = groups
let groups_select (eStar : eStar) (groups : groupsDB) = List.hd groups

*)
let nodata = ID "NODATA"

type attrname = string

type rowDB = e list

type tableDB = 	{
				attributes : attrname list; 
				data : rowDB list
				}

type language_table = { 
				declarationp : tableDB ; 
				grammar_info : tableDB ; 
				grammar : tableDB ; 
				rule : tableDB  
					  }

type groupsDB = {				(* tableDB list *)
				attributes : attrname list; 
				groups : (rowDB list) list
				}

let groups_initialize attributes = { attributes = attributes ; groups = [] }		

let declarationp_attributes = ["relation" ; "rel-args"]
let grammar_info_attributes = ["category-info" ; "meta-var" ; "obj-var"]
let grammar_attributes = ["category" ; "term"]
let rule_attributes = ["rulename" ; "predname" ; "args" ; "role"]

let initial_table = 	
	{
	declarationp = {attributes = declarationp_attributes; data = []} ;
	grammar_info = {attributes = grammar_info_attributes; data = []} ;
	grammar = {attributes = grammar_attributes; data = []}  ;
	rule = {attributes = rule_attributes; data = []} 
	}

let table_make (attributes : attrname list) (data : rowDB list) : tableDB = { attributes = attributes ; data = data }

let attribute_make_column_SimpleByName (name : attrname) : column = (ID(name),None)
let attribute_add_num (name : attrname) :  attrname = name ^ "-number"

let column_is_ROWS (column : column) : bool = if is_none (snd column) then false else let rowsOption = get (snd column) in is_some (snd rowsOption)
let column_isNOT_ROWS (column : column) : bool = not (column_is_ROWS column)
let column_to_attribute (column : column) : attrname = if is_none (snd column) then e_getAttribute (fst column) else fst (get (snd column))
let attributes_to_eStar (attributes : attrname list) : eStar = COLUMNS(List.map attribute_make_column_SimpleByName attributes)


let eStar_to_attributes (eStar : eStar) (attributes : attrname list) : attrname list = match eStar with 
| STAR -> attributes
| COLUMNS(columns) -> List.map column_to_attribute columns


let row_append_a_list (lrow : rowDB list) (row : rowDB) : rowDB list = 
	List.map (List.append row) lrow
		
let table_product (table1 : tableDB) (table2 : tableDB) : tableDB = 
	{ 
	attributes = table1.attributes @ table2.attributes ; 
	data = List.concat (List.map (row_append_a_list table2.data) table1.data)
	}

let table_makeOneGroup (table : tableDB) : groupsDB = { attributes = table.attributes ; groups = [table.data] }

type map_key_rows = (e * (rowDB list)) list (* this is an association list *)
let map_getGroups (m : map_key_rows) : (rowDB list) list = List.map snd m

let one_group_groupBy_one_id (index : int) (rowsOfOneGroup : rowDB list)  : map_key_rows = 
	let one_row_update_map (index : int) (m : map_key_rows) (row : rowDB) : map_key_rows = 
		(let key = List.nth row index in 
		if List.mem_assoc key m 
			then let currentRows = List.assoc key m in let newRows = row :: currentRows in (key, newRows) :: (remove_assoc key m) 
			else (key, [row]) :: m)		
	in List.fold_left (one_row_update_map index) [] rowsOfOneGroup
	

let rec groups_groupBy_one_id (groups : groupsDB) (id : id) : groupsDB = 
	let indexes = find_indexes (groups.attributes) id [] 0 in 
	let index = try List.hd indexes with | _ -> raise(Failure("groups_groupBy_one_id: List.hd indexes")) in 
	(* let _ = print_endline (string_of_int index) in *)
	(* let map_with_rows = (List.fold_left (one_group_groupBy_one_id index) [] (groups.groups)) in *)
	let maps : map_key_rows list = List.map (one_group_groupBy_one_id index) (groups.groups) in 
	  { attributes = groups.attributes ; groups = List.concat (List.map map_getGroups maps) } 



let rec groups_groupBy (groups : groupsDB) (ids : id list) : groupsDB = 
	if ids = [] then groups else 
	(* let _ = print_endline ("Raggruppo per " ^ (List.hd ids)) in 
	let _ = print_endline (": inizio con gruppi: " ^ (string_of_int (List.length groups.groups))) in 
	*)
	let groupsAfterOneId = groups_groupBy_one_id groups (List.hd ids) in 
	(* let _ = print_endline (": finisco con gruppi: " ^ (string_of_int (List.length groupsAfterOneId.groups))) in *)
		groups_groupBy groupsAfterOneId (List.tl ids)

let groups_to_table (groups : groupsDB) : tableDB = { attributes = groups.attributes ; data = List.concat groups.groups }






	(*
		
let one_group_groupBy_one_id (index : int) (m : map_key_rows) (rowsOfOneGroup : rowDB list)  : map_key_rows = 
	let one_row_update_map (index : int) (m : map_key_rows) (row : rowDB) : map_key_rows = 
		(let key = List.nth row index in 
		if List.mem_assoc key m 
			then let currentRows = List.assoc key m in let newRows = row :: currentRows in (key, newRows) :: (remove_assoc key m) 
			else (key, [row]) :: m)		
	in List.fold_left (one_row_update_map index) m rowsOfOneGroup
		
		
		
		
		
let groups_insertIfKeyMatches (key : e) (index : int) (row : e list) (group : rowDB list) : rowDB list = 
	if group = [] then [] else 
	if List.nth (List.hd group) index = key then row :: group else group

let groups_add_row (row : rowDB) (id : id) (groups : groupsDB) :  groupsDB = 
	let indexes = find_indexes (groups.attributes) id [] 0 in 
	let index = try List.hd indexes with | _ -> raise(Failure("List.hd indexes in groups_add_row")) in 
	let key = List.nth row index in 
	let newGroups = List.map (groups_insertIfKeyMatches key index row) groups.groups in 
	let newGroups = if newGroups = groups.groups then [row] :: newGroups else newGroups in 	
		{ attributes = groups.attributes ; groups = newGroups }

let rec table_groupBy_id_with_acc (table : tableDB) (id : id) (acc : groupsDB) : groupsDB = 
	let rows = table.data in 
	if rows = [] then acc else 
		let newTableWithRowRemoved = { table with data = List.tl rows } in 
		let groupsAfterOneRow = groups_add_row (List.hd rows) id acc in 
			table_groupBy_id_with_acc newTableWithRowRemoved id groupsAfterOneRow

let rec table_groupBy_with_acc (table : tableDB) (ids : id list) (acc : groupsDB) : groupsDB = 
	if ids = [] then acc else 
		let groupsAfterOneId = table_groupBy_id_with_acc table (List.hd ids) acc in 
			table_groupBy_with_acc table (List.tl ids) groupsAfterOneId

let table_groupBy (table : tableDB) (ids : id list) : groupsDB = 
	table_groupBy_with_acc table ids (groups_initialize table.attributes)

	*)
