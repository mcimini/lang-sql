open Batteries
open Unix
open Sys
open Filename
open Query
open Language_table
open Language_to_table
open Pretty_printerTable
open ExecQuery
(*
open Pretty_printer
open Pretty_printerLan
*)

open Lexing

let folder_of_languages_repo = "languages/"
let folder_of_answers = "/answers/"
let queryFile = "queries.lsql"

let get_positions lexbuf = let pos = lexbuf.lex_curr_p in pos.pos_fname ^ ":" ^ string_of_int pos.pos_lnum  ^ ":" ^ string_of_int (pos.pos_cnum - pos.pos_bol + 1)

let languagesFromRepo (folder : string)  = 
	let dir = folder ^ "/" ^ folder_of_languages_repo in 
	let contents = Array.to_list (Sys.readdir dir) in
	(* let contents = List.rev_map (Filename.concat dir) contents in *)
	let files =
	  List.fold_left (fun (files) f ->
	       match (stat (dir ^ f)).st_kind with
		   | S_REG -> if String.ends_with f ".lan" then files @ [f] else files (* Regular file *)
	   	   | _ -> files)
		   [] contents in 
		   files

let parseOneLanguage filename =
  (* Parse the language, lan is the parsed language *)
(*  let dir = folder_of_languages_repo in 
  let input = (open_in (dir ^ filename)) in*)
  let input = open_in filename in 
  let filebuf = Lexing.from_input input in
  let unusedVar = print_endline ("Reading the language: " ^ filename) in 
  let lan = try (ParserLan.fileLan LexerLan.token filebuf) with
						    | LexerLan.Error msg -> raise(Failure("Lexer error: " ^ get_positions filebuf ^ " with message: " ^ msg))
						    | ParserLan.Error -> raise(Failure("Parser error: " ^ get_positions filebuf)) in
   let unusedVar = IO.close_in input; in 
	lan 
let parseTheQuery filename = 
   (* Parse the query, query is the var of the parsed schema *)
   let inputSchema = (open_in filename) in
   let filebuf = Lexing.from_input inputSchema in
   let query = try (Parser.file Lexer.token filebuf) with
 						    | Lexer.Error msg -> raise(Failure("Lexer error: " ^ get_positions filebuf ^ " with message: " ^ msg))
 						    | Parser.Error -> raise(Failure("Parser error: " ^ get_positions filebuf)) in

   let unusedVar = IO.close_in inputSchema; in 
       query 
	   

let applyAllQueriesToOneLanguages_to_file (folder : string) filenameLan = 	
	let queryFile = folder ^ "/" ^ queryFile in 
	let queries = parseTheQuery queryFile in 
	let lan = parseOneLanguage (folder ^ "/" ^ folder_of_languages_repo ^ filenameLan) in 
	let lanTable = language_to_table lan in 
	let nameOfLanguage = Filename.chop_extension filenameLan in 
(*	let _ = try Unix.mkdir ("./" ^ folder ^ folder_of_answers) 755 with Unix_error _ -> () in  IF folder for answers does not exist. but it does not work *)
	let outputFilename = "./" ^ folder ^ folder_of_answers ^ nameOfLanguage ^ ".tbl" in 
	let tbl_file = open_out outputFilename in 
	let resultInSIXtables = (List.map (execQuery lan lanTable) queries) in (* remember that execQuery returns 6 tables (after WHERE,after GROUPBY, etc.. ) *)
	(* For DEBUGGING: the following:
	List.map (output_string tbl_file) [(print_language_table lanTable)]; 
	output_string tbl_file (String.concat "\n\n" (List.map print_table_with_phases resultInSIXtables))
		Otherwise, the following code for an appropriate output to the user. 
	 *)
	let resultInSIXtables = List.filter (fun l -> not (l = [])) resultInSIXtables in (* to trim the [] results from DEFINEs *)
	let result : (tableDB list) = List.map List.last resultInSIXtables in 
	output_string tbl_file (String.concat "\n\n" (List.mapi print_table_for_final_result result));
    close_out tbl_file;
    print_endline ("Results generated in " ^ outputFilename);;

let () = match Array.to_list Sys.argv with 
	| [oneArg] -> print_endline ("Command line error: Lang-SQL needs the name of a folder, example: ./lnsql example_queries");
	| [oneArg ; twoArg] -> 
		let folder : string = Sys.argv.(1) in 
		List.hd (List.map (applyAllQueriesToOneLanguages_to_file folder) (languagesFromRepo folder));
	| otherwise -> print_endline ("Command line error: Too many arguments to Lang-SQL");


(*
	
let repoOfQueries = 
	[
	"test.lsql"
	(* "./queries.lsql"  *)
	]
	
let applyQueryToOneLang query filenameLan = 
	let lan = parseOneLanguage filenameLan in 
	let lanTable = language_to_table lan in 
		execQuery lan lanTable query

let applyQueryToAllLanguages filenameQuery = 	
	let query = parseTheQuery filenameQuery in 
		List.map (applyQueryToOneLang query) languagesFromRepo 
	
let parseAllLanguages _ = 
	let _ = List.map parseOneLanguage languagesFromRepo in 
	print_endline "Successfully parsed all languages."
	
	let testProduct = table_product (lanTable.rule) (lanTable.grammar) in 
	output_string tbl_file (print_table testProduct);
	
*)