open Batteries
open List
open Language_table
open Pretty_printerQuery

let print_row (row : rowDB) = 
	String.concat "\t\t" (List.map print_e row)

let print_table (tbl : tableDB) = 
	String.concat "\t\t" tbl.attributes
	^ "\n\n" ^
	String.concat "\n" (List.map print_row tbl.data) 
	^ "\n\n"
	
let print_language_table (langTbl : language_table) : string = 
	print_table langTbl.declarationp 
	^ "\n\n" ^
	print_table langTbl.grammar_info 
	^ "\n\n" ^
	print_table langTbl.grammar 
	^ "\n\n" ^
	print_table langTbl.rule 
	^ "\n\n" 

let print_table_with_phases (tblList : tableDB list) = 
	if tblList = [] then "" else 
	match tblList with [afterFrom ; afterWhere ; afterGroupBy ; afterHaving ; afterSelect ; expandedForASROWS] -> 
	"afterFrom = \n" ^ print_table afterFrom 
	^
	"afterWhere = \n" ^ print_table afterWhere 
	^
	"afterGroupBy = \n" ^ print_table afterGroupBy 
	^
	"afterHaving = \n" ^ print_table afterHaving 
	^
	"afterSelect = \n" ^ print_table afterSelect 
	^
	"expandedForASROWS = \n" ^ print_table expandedForASROWS 


let print_table_for_final_result (index : int) (tbl : tableDB) = 
	let index_string = string_of_int (index + 1) in 
	if List.concat tbl.data = [] then "=== QUERY " ^ index_string ^ ": EMPTY TABLE ===\n\n" else "=== QUERY " ^ index_string ^ ": TABLE ===\n" ^ print_table tbl