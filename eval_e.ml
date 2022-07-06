open Batteries
open Option
open List
open Query
open Language
open Language_table
open Language_to_table

let rec eval_e (lan : language) (attributes : string list) (count : int) (position : int) (row : rowDB) (e : e) : e = match e with 
| ID(id) -> let indexes = find_indexes attributes id [] 0 in 
				let index = try List.hd indexes with | _ -> -100 in (* raise(Failure("List.hd in ID(id) in eval_e. " ^ id ^ dump(attributes))) in *)
					if index = -100 then NAME(id) else List.nth row index
| NAME(name) -> NAME(name) 
| METAVAR(var) -> METAVAR(var)
| OBJVAR(var) -> OBJVAR(var) 
| INT(n) -> INT(n) 
| TERM(termDB) -> TERM(termDB)
| CONCL -> CONCL 
| PREM -> PREM 
| LIST(es) -> LIST(List.map (eval_e lan attributes count position row) es) 
| NTH(e1,e2) -> (match (eval_e lan attributes count position row e1) with (LIST es) -> let n = e_getInt (eval_e lan attributes count position row e2) in if List.length es <= n then NAME("nth out of bounds") else List.nth es n   )
| LAST(e1,e2) -> (match (eval_e lan attributes count position row e1) with (LIST es) -> let n = e_getInt (eval_e lan attributes count position row e2) in if List.length es <= n then NAME("nth out of bounds") else List.nth (List.rev es) n  )
| GETOPNAME(e) -> (match (eval_e lan attributes count position row e) with | TERM(ConstrDB(name,_)) -> NAME(name) | _ -> raise(Failure("GET-OPNAME case failure")) )
| GETARGS(e) -> (match (eval_e lan attributes count position row e) with TERM(ConstrDB(_,args)) -> LIST(List.map term_wrap_in_TERM args)  )
| GETBOUNDTERM(e) -> (match (eval_e lan attributes count position row e) with TERM(AbsDB(_,t)) -> TERM(t)  )
| GETBOUNDVAR(e) -> (match (eval_e lan attributes count position row e) with TERM(AbsDB(var,_)) -> METAVAR(var)   )
| GETVARS(e) -> (match (eval_e lan attributes count position row e) with 
				| TERM(t) -> LIST(List.map term_wrap_in_TERM (termDB_getVars t))  
				| LIST(es) -> e_list_concat (List.map (fun e -> eval_e lan attributes count position row (GETVARS(e))) es) 
				)
| ADDINDEX(e1,e2) ->  let pair = e_carries_name (eval_e lan attributes count position row e1) in if fst pair then let var = snd pair in let n = e_getInt (eval_e lan attributes count position row e2) in METAVAR(var ^ string_of_int n) else raise(Failure("ADD-INDEX case failure"))
| ADDINDEXTAG(tag,e1,e2) -> let pair = e_carries_name (eval_e lan attributes count position row e1) in if fst pair then let name = snd pair in let n = e_getInt (eval_e lan attributes count position row e2) in NAME(name ^ string_of_int n) else raise(Failure("ADD-INDEXTAG case failure"))
| ADDPRIME(e) -> (match (eval_e lan attributes count position row e) with | TERM(t) -> TERM(termDB_add_prime t) | METAVAR(var) -> TERM(termDB_add_prime (VarDB(var))))
| ADDPRIMEAT(e1,e2) -> let n = e_getInt (eval_e lan attributes count position row e2) in (match (eval_e lan attributes count position row e1) with | TERM(t) -> TERM(termDB_add_prime_at t n))
| GETSKELETON(e,cname) -> (match (eval_e lan attributes count position row e) with NAME(opname) -> 
	let items = language_grammarLookupByCategory lan cname in 
	let itemsOfCNAME = List.filter (fun t -> compareConstructors t (Constr(opname,[]))) items in 
	let itemOfCNAME = try List.hd itemsOfCNAME with | _ -> raise(Failure("List.hd in ID(id) in eval_e")) in 
	let newArguments = List.mapi insert_number_to_var (term_getArguments itemOfCNAME) in 
		TERM(ConstrDB(opname, (List.map term_to_termDB newArguments)))
	)
| COUNT -> INT count
| POSITION -> INT position 
| _ -> raise(Failure("no case in eval_e: " ^ (dump e)))
