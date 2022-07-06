open Batteries
open List
open Option
open Query

let print_tag tag = match tag with 
	| OPNAME -> "OPNAME"
	| CNAME -> "CNAME"
	| RNAME -> "RNAME"
	| PNAME -> "PNAME"

let rec print_termDB termDB = match termDB with 
	| ConstrDB(cname, ts) -> "(" ^ cname ^ if ts = [] then ")" else " " ^ (String.concat " " (List.map print_termDB ts)) ^ ")"
	| VarDB(var) -> var
	| AbsDB(var,t) -> "(" ^ var ^ ")" ^ print_termDB t
	| SubstDB(t1,t2,t3) -> print_termDB t1 ^ "[" ^ print_termDB t2 ^ "/" ^ print_termDB t3 ^ "]"


let rec print_e e = match e with 
	| ID(id) -> id
	| NAME(s) -> s
	| METAVAR(s) -> s 
	| OBJVAR(s) -> s
	| INT(n) -> string_of_int n
	| TERM(termDB) -> print_termDB termDB
	| CONCL -> "CONCL"
	| PREM -> "PREM"
	| LIST(es) -> "[" ^ (String.concat " ; " (List.map print_e es)) ^ "]"
	| NTH(e1,e2) -> "NTH(" ^ print_e e1 ^ ", " ^ print_e e2 ^ ")"
	| LAST(e1,e2) ->  "LAST(" ^ print_e e1 ^ ", " ^ print_e e2 ^ ")"
	| GETOPNAME(e) -> "GET-OPNAME(" ^ print_e e ^ ")"
	| GETARGS(e) -> "GET-ARGS(" ^ print_e e ^ ")"
	| GETBOUNDTERM(e) -> "GET-BOUND-TERM(" ^ print_e e ^ ")"
	| GETBOUNDVAR(e) -> "GET-BOUND-VAR(" ^ print_e e ^ ")"
	| GETVARS(e) -> "GET-VARS(" ^ print_e e ^ ")"
	| ADDINDEX(e1,e2) -> "ADD-INDEX(" ^ print_e e1 ^ ", " ^ print_e e2 ^ ")"
	| ADDINDEXTAG(tag,e1,e2) -> "ADD-INDEX[" ^ print_tag tag ^ "](" ^ print_e e1 ^ ", " ^ print_e e2 ^ ")"
	| ADDPRIME(e) -> "ADD-PRIME(" ^ print_e e ^ ")"
	| ADDPRIMEAT(e1,e2) -> "ADD-PRIME-AT(" ^ print_e e1 ^ ", " ^ print_e e2 ^ ")"
	| GETSKELETON(e,cname) -> "GET-SKELETON(" ^ print_e e ^ ", " ^ cname ^ ")"
	| COUNT -> "COUNT()"
	| POSITION -> "POSITION()"

