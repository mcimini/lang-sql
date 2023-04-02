open Batteries
open Option
open List
open String
open Query 
open Language 
open Language_table
open Eval_e

let e_to_term e = match e with 
| TERM(ConstrDB(cname,_)) -> Constr(cname, []) (* e_to_term used only about ConstrDB, and args do not matter *)
| _ -> 	raise(Failure("e_to_term pattern-match fail: " ^ (dump e)))

let rec eval_formula (lan : language) (attributes : string list) (f : Query.formula) (count : int) (position : int) (row : rowDB) : bool = match f with 
| ISBOUND(e) -> e_isTerm (eval_e lan attributes count position row e) && termDB_isBound (e_getTerm (eval_e lan attributes count position row e))
| ISCONSTANT(e) -> e_isTerm (eval_e lan attributes count position row e) && termDB_isConstant (e_getTerm (eval_e lan attributes count position row e))
| EQUAL(e1,e2) -> e_equal (eval_e lan attributes count position row e1) (eval_e lan attributes count position row e2)
| GREATER(e1,e2) -> let e1' = (eval_e lan attributes count position row e1) in let e2' = (eval_e lan attributes count position row e2) in e_isInt e1' && e_isInt e2' && e_getInt e1' > e_getInt e2'
| ISDERIVEDBY(e,cname) -> let evaluated = (eval_e lan attributes count position row e) in (match evaluated with 
							| TERM(ConstrDB(cname2,_)) -> termLan_list_mem (Constr(cname2,[])) (language_grammarLookupByCategory lan cname)
							| _ -> false)
| ISCATVAR(e,cname) -> let pair = e_carries_name (eval_e lan attributes count position row e) in (fst pair && starts_with (snd pair) (language_getMetavarByCategory lan cname))
| ISCONSTRUCTED(e) -> e_isTerm (eval_e lan attributes count position row e) && termDB_isConstr (e_getTerm (eval_e lan attributes count position row e))
| ISSKELETON(e,cname) -> eval_formula lan attributes (ISCONSTRUCTED(e)) count position row && (match (eval_e lan attributes count position row e) with TERM(ConstrDB(_,args)) ->  List.for_all (fun arg -> not (termDB_isConstr arg)) args)
| AND(formula1,formula2) -> eval_formula lan attributes formula1 count position row && eval_formula lan attributes formula2 count position row 
| OR(formula1,formula2) -> eval_formula lan attributes formula1 count position row  || eval_formula lan attributes formula2 count position row 
| NOT(formula) -> not (eval_formula lan attributes formula count position row)


(* 

	let _ = print_endline ((dump (eval_e lan attributes count position row e1)) ^ (dump (eval_e lan attributes count position row e2))) in 


	let _ = print_endline (string_of_int (e_getInt (eval_e lan attributes count position row e1)) ^ ">" ^ string_of_int (e_getInt (eval_e lan attributes count position row e2)) ^ "e_form count:" ^ string_of_int count) in 
	let _ = print_endline (" result of the > is: " ^ string_of_bool (e_isInt e1 && e_isInt e2 && e_getInt (eval_e lan attributes count position row e1) > e_getInt (eval_e lan attributes count position row e2))) in 	

| EQUAL(e1,e2) -> raise(Failure(dump (eval_e lan attributes count position row e1) ^ dump (eval_e lan attributes count position row e2)))

Testing ISCATVAR
raise(Failure(string_of_bool (fst pair) ^ (language_getMetavarByCategory lan cname) ^ snd pair ^ string_of_bool (starts_with (snd pair) (language_getMetavarByCategory lan cname)))) 
*)



