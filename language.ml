open Batteries
open Option
open List

let ruleCounter = ref 0

type term = 
	| Constr of string * (term list)
	| LangVar of string
	| BoundVar 
	| BoundTypeVar 
	| Abs of term
	| AbsType of term
	| Substitution of term * term * term 

type grammarLine = GrammarLine of string * (string option) * ((term list) option)

type formula = Formula of string * (term list)

type rule = Rule of string * (formula list) * formula

type language = Language of (grammarLine list) * (rule list) 


let term_isConstr t = match t with 
	| Constr(cname,_) -> true
	| _ -> false

let grammarLine_getCategory (GrammarLine(cname, _, _)) = cname
let grammarLine_getMetavar (GrammarLine(_, metavarOption, _)) = if is_none metavarOption then "_" else (try get metavarOption with | _ -> raise(Failure("get metavarOption in grammarLine_getMetavar")))
let grammarLine_getItems (GrammarLine(_, _, itemsOption)) = 
	if is_none itemsOption 
		then [] (* raise(Failure("itemsOption is None")) *)
		else List.filter term_isConstr (try get itemsOption with | _ -> raise(Failure("get itemsOption in grammarLine_getItemsOption")))

let grammarLine_getMetavarOption (GrammarLine(_, metavarOption, _)) = metavarOption
let grammarLine_getItemsOption (GrammarLine(_, _, itemsOption)) = itemsOption

let term_getCNAME t = match t with | Constr(cname,_) -> cname  | _ -> raise(Failure("term_getCNAME fail: " ^ (dump t)))
let term_getArguments t = match t with | Constr(_,ts) -> ts | _ -> raise(Failure("term_getArguments fail: " ^ (dump t)))

let var_GetVarname (LangVar(var)) = var


let termLan_list_mem t listOfTerms : bool = List.mem (term_getCNAME t) (List.map term_getCNAME (List.filter term_isConstr listOfTerms))
let termLan_list_mem_map_version listOfTerms t = termLan_list_mem t listOfTerms
	
let compareConstructors t1 t2 = termLan_list_mem t1 [t2]

let language_getGrammar (Language(grammar, _)) = grammar
let language_getRules (Language(_, rules)) = rules

let rule_getInputOfConclusion (Rule(_,_,Formula(predname,ts))) = if predname = "typeOf" then List.nth ts 1 else List.hd ts
let rule_getOutputOfConclusion (Rule(_,_,Formula(_,ts))) = List.last ts
let rule_getRulename (Rule(rname,_,_)) = rname
let rule_getPremises (Rule(_,premises,_)) = premises
let rule_getConclusion (Rule(_,_,conclusion)) = conclusion

let formula_getArguments (Formula(predname,ts)) = ts
let formula_getPredname (Formula(predname,_)) = predname


(* let rule_isOf t (Rule(_,Formula(_,ts))) = true compareConstructors t (List.hd ts) *)
let rule_ProvesOp t (Rule(_,_,Formula(_,ts))) = compareConstructors t (List.last ts)
let language_getRulesOfOp lan cname = List.filter (fun r -> compareConstructors (rule_getInputOfConclusion r) (Constr(cname,[]))) (language_getRules lan)

let rule_isPredname predname (Rule(_,_,Formula(predname2,_))) = predname = predname2

let language_getTypingRules lan = List.filter (rule_isPredname "typeOf") (language_getRules lan)
let language_getReductionRules lan = List.filter (rule_isPredname "step") (language_getRules lan)

let insert_number_to_var i t = 
	(match t with 
		| LangVar(var) -> LangVar(var ^ (string_of_int (i))) 
		| Abs(LangVar(var)) -> Abs(LangVar(var ^ (string_of_int (i))))
		| AbsType(LangVar(var)) -> AbsType(LangVar(var ^ (string_of_int (i))))
		| _ -> t) 

let rec find_indexes l el indexes n = if l = [] then indexes else if List.hd l = el then find_indexes (List.tl l) el (n :: indexes) (n+1) else find_indexes (List.tl l) el indexes (n+1)  
let rec find_indexes_startsWith l el1 el2 indexes n = if l = [] then indexes else let LangVar(var) = (List.hd l) in if String.starts_with var el1 || String.starts_with var el2 then find_indexes_startsWith (List.tl l) el1 el2 (n :: indexes) (n+1) else find_indexes_startsWith (List.tl l) el1 el2 indexes (n+1) 

(* cname is a grammar syntactic category, example: Expression, Type *)
let language_getMetavarByCategory lan cname : string = 
	 let grammarLine = List.filter (fun grLine -> cname = (grammarLine_getCategory grLine)) (language_getGrammar lan) in 
	 if grammarLine = [] then raise(Failure("language_getMetavarByCategory: not found")) else grammarLine_getMetavar (List.hd grammarLine)

(* cname is a grammar syntactic category, example: Expression, Type *)
let language_grammarLookupByCategory lan cname : term list = 
	 let grammarLine = List.filter (fun grLine -> cname = (grammarLine_getCategory grLine)) (language_getGrammar lan) in 
	 if grammarLine = [] then [] else 
	 if is_none (grammarLine_getItemsOption (List.hd grammarLine)) then [] else 
		 let grammarItems = try List.filter term_isConstr (get (grammarLine_getItemsOption (List.hd grammarLine))) with | _ -> raise(Failure("get (grammarLine_getItemsOption ... ) in language_grammarLookupByCategory")) in 
		 	grammarItems
(*	 	if cname = "Value" || cname = "Context"  (* vars in Value are already numbered, Contexts do not need to get a number *)
			then grammarItems 
			else List.map numbers_to_metavariables grammarItems
*)
