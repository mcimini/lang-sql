open Batteries
open List
open Option
open Language
open Language_table
open Query

(* TO DO  declarationp_table_add *)

let unusedOBJVAR = "_"

let rec term_to_termDB (t : term) : termDB = match t with
	| Constr(cname, ts) -> ConstrDB(cname, List.map term_to_termDB ts)
	| LangVar(var) -> VarDB var
	| BoundVar -> VarDB "x"
	| BoundTypeVar -> VarDB "X"
	| Abs(t) -> AbsDB("x", term_to_termDB t)
	| AbsType(t) -> AbsDB("X", term_to_termDB t)
	| Substitution(t1,t2,t3) -> SubstDB(term_to_termDB t1,term_to_termDB t2,term_to_termDB t3)

let term_to_e_term (t : term) : e = TERM(term_to_termDB t) 

let grammar_table_add (lanTbl : language_table) (line : grammarLine) : language_table = 
	let category : e = NAME (grammarLine_getCategory line) in 
	let items = grammarLine_getItems line in 
	let terms : e list = List.map term_to_e_term items in 
	let records : ((e list) list) = List.map (fun term -> [category ; term]) terms in 
	let grammar_add_one_record currentLanTbl record = { currentLanTbl with grammar = {currentLanTbl.grammar with data = record :: currentLanTbl.grammar.data } } in 
	 List.fold_left grammar_add_one_record lanTbl records

(*
	let record = [category ; terms] in 
	 { lanTbl with grammar = {lanTbl.grammar with data = record :: lanTbl.grammar.data } }
	
*)	
let grammar_info_table_add (lanTbl : language_table) (line : grammarLine) : language_table = 
	let category : e = NAME (grammarLine_getCategory line) in 
	let metavar : e = METAVAR (grammarLine_getMetavar line) in 
	(* to compute objvar: we can get the item (var ["x"]), we do getArgs on it, and get the first (i.e. the head)  
	let objvarTermInItems = List.filter (fun item -> term_getCNAME item = "var") (grammarLine_getItems line) in 
	let objvar : e = if objvarTermInItems = [] then OBJVAR unusedOBJVAR else OBJVAR (var_GetVarname (List.hd (term_getArguments (List.hd objvarTermInItems)))) in 
	However, to make Lang-SQL compatible to Lang-n-Check, which does not have (var x), we fix "x" for bound expressions, "X" for bound types
	*)
	let objvar : e = if snd (e_carries_name category) = "Expression" then OBJVAR "x" else if snd (e_carries_name category) = "Type" then OBJVAR "X" else OBJVAR unusedOBJVAR in 
	let record = [category ; metavar ; objvar] in 
	 { lanTbl with grammar_info = {lanTbl.grammar_info with data = record :: lanTbl.grammar_info.data } }
	

let declarationp_table_add (lanTbl : language_table) (item : term) : language_table =  
	let relation = ID(term_getCNAME item) in 
	let rel_args = LIST(List.map term_wrap_in_NAME (List.map var_GetVarname (term_getArguments item))) in (* here those [Expression ; Expression] are LangVars *)
	let record = [relation ; rel_args] in 
	 { lanTbl with declarationp = {lanTbl.declarationp with data = record :: lanTbl.declarationp.data } }

let declarationp_table_add_default (lanTbl : language_table) : language_table = 
	let stepRecord = [ID("step") ; LIST([ID("Expression") ; ID("Expression")])] in 
	let typeOfRecord = [ID("typeOf") ; LIST([ID("TypeEnvironment") ; ID("Expression") ; ID("Type")])] in 
	let lanTbl = { lanTbl with declarationp = {lanTbl.declarationp with data = [stepRecord] } } in   
      { lanTbl with declarationp = {lanTbl.declarationp with data = typeOfRecord :: lanTbl.declarationp.data } }

let rule_table_add (lanTbl : language_table) (r :rule) : language_table = 
	let rulename = rule_getRulename r in 
	let premises = rule_getPremises r in 
	let conclusion = rule_getConclusion r in 
	let createRecordWithoutRole r = [NAME rulename ; NAME (formula_getPredname r) ; LIST (List.map term_to_e_term (formula_getArguments r))] in 
	let recordsWithoutRole = List.map createRecordWithoutRole (conclusion :: premises) in 
	let records : ((e list) list) = 
					[(List.hd recordsWithoutRole) @ [CONCL]]  (* first is the conclusion *)
					@
					(List.map (fun record -> record @ [PREM]) (List.tl recordsWithoutRole)) in 
	let rule_add_one_record currentLanTbl record = { currentLanTbl with rule = {currentLanTbl.rule with data = record :: currentLanTbl.rule.data } } in 
	 List.fold_left rule_add_one_record lanTbl records

let language_to_table (lan : language) : language_table =  
	let lanTbl = initial_table in 
	let lanTbl  = List.fold_left grammar_table_add lanTbl (language_getGrammar lan) in 
	let lanTbl  = List.fold_left grammar_info_table_add lanTbl (language_getGrammar lan) in 
(*	
	Lang-SQL reads grammar lines such as Relation ::= (step Expression Expression) | (typeOf TypeEnvironment Expression Type) to create declarationp. 
	if Relation ::= ... does not exists, then we assume the language has the ordinary e --> e and Gamma |- e : T  *)
	let lanTbl  = let relationItems = language_grammarLookupByCategory lan "Relation" in if relationItems = [] then declarationp_table_add_default lanTbl else List.fold_left declarationp_table_add lanTbl relationItems in 
	let lanTbl  = List.fold_left rule_table_add lanTbl (language_getRules lan) in 
	 lanTbl


