open Batteries
open String 

type id = string
type opname = string
type cname = string
type rname = string
type pname = string


type termDB= 
	| ConstrDB of string * (termDB list)
	| VarDB of string
	| AbsDB of string * termDB
	| SubstDB of termDB * termDB * termDB 

type tag = 
	| OPNAME
	| CNAME
	| RNAME
	| PNAME

type e = 
	| ID of id
	| NAME of string
	| METAVAR of string
	| OBJVAR of string
	| INT of int 
	| TERM of termDB 
	| CONCL
	| PREM
	| LIST of (e list)
	| NTH of e * e  
	| LAST of e * e  
	| GETOPNAME of e   
	| GETARGS of e   
	| GETBOUNDTERM of e  
	| GETBOUNDVAR of e  
	| GETVARS of e  
	| ADDINDEX of e * e  
	| ADDINDEXTAG of tag * e * e  
	| ADDPRIME of e  
	| ADDPRIMEAT of e * e  
	| GETSKELETON of e * cname
	| COUNT   
	| POSITION   

type table = 
	| GRAMMAR
	| GRAMMARINFO
	| DECLARATIONP
	| RULE
	| CAT of cname

(* whether the new name for a column exists is an option
	the option contains the new name as id.
	and whethere ROWS was present, as an option of unit. 
 *)
type rowsOption = bool option
type column = e * ((id * rowsOption) option)

type eStar = 
		| STAR
		| COLUMNS of column list 


type formula = 
	| ISBOUND of e 
	| ISCONSTANT of e 
	| EQUAL of e * e
	| GREATER of e * e	
	| ISDERIVEDBY of e * cname		
	| ISCATVAR of e * cname	
	| ISCONSTRUCTED of e
	| ISSKELETON of e * cname	
	| AND of formula * formula	
	| OR of formula * formula	  		
	| NOT of formula 

		
type distinctOption = unit option (* same as rowOption *)
type whereOption = formula option
type havingOption = (formula * (unit option)) option
type groupOption = (id list * havingOption) option

type query = 
	| TABLE of table
	| SELECT of distinctOption * eStar * query list * whereOption * groupOption 
	| UNION of query * query 
	| EXCEPT of query * query 
	| INTERSECT of query * query 
	| DEFINE of cname * query 
	| INSERT of query * query 
	| TEST of test
and test = 
	| TEQUAL of query * query 
	| CONTAINS of query * query 
	| DISJOINT of query * query 
	| EMPTY of query 
	| DISTINCTROWS of query 
	| TAND of test  * test  
	| TOR of test  * test  
	| TNOT of test 

let term_wrap_in_ID str = ID str
let term_wrap_in_NAME str = NAME str
let term_wrap_in_TERM t = TERM t
let termDB_isBound t = match t with | AbsDB(_,_) -> true | _ -> false
let termDB_isConstr t = match t with | ConstrDB(_,_) -> true | _ -> false
let termDB_isConstant t = match t with | ConstrDB(_,[]) -> true | _ -> false
let termDB_isVar t = match t with | VarDB(_) -> true | _ -> false

let e_carries_name e : (bool * string) = match e with 
	| ID(name) -> true,name
	| NAME(name) -> true,name
	| METAVAR(name) -> true,name
	| OBJVAR(name) -> true,name
	| TERM(VarDB(name)) -> true,name
	| _ -> false,""

let e_isTerm e = match e with | TERM(_) -> true | _ -> false
let e_isInt e = match e with | INT(_) -> true | _ -> false
let e_isList e = match e with | LIST(_) -> true | _ -> false
let e_getTerm (TERM(t)) = t
let e_getInt (INT(n)) = n
let e_getListOFes e = match e with | LIST(es) -> es

let e_list_concat listOfLISTS : e = LIST(List.concat (List.map (fun l -> e_getListOFes l) listOfLISTS))

let e_getAttribute e = if fst (e_carries_name e) then snd (e_carries_name e) else raise(Failure("e_getAttribute: not a name."))

	

let e_equal e1 e2 = let pair1 = e_carries_name e1 in let pair2 = e_carries_name e2 in 
	 				if fst pair1 && fst pair2 then snd pair1 = snd pair2 else e1 = e2
	

let rec termDB_add_prime t = match t with 
| ConstrDB(c,ts) -> ConstrDB(c,List.map termDB_add_prime ts) 
| VarDB(var) -> VarDB(var ^ "'")
| AbsDB(var,t) -> AbsDB(var,termDB_add_prime t) 
| SubstDB(t1,t2,t3) -> SubstDB(termDB_add_prime t1,termDB_add_prime t2,termDB_add_prime t3)

let list_replace l index el  = List.mapi (fun i a -> if index = i then el else a) l

let rec termDB_add_prime_at t n = match t with 
| ConstrDB(c,ts) -> if List.length ts <= n then ConstrDB(c,ts) else ConstrDB(c,list_replace ts n (termDB_add_prime (List.nth ts n))) 

let rec termDB_getVars t = match t with 
| ConstrDB(c,ts) -> List.concat (List.map termDB_getVars ts)
| VarDB(var) -> [VarDB(var)]
| AbsDB(var,t) -> termDB_getVars t
| SubstDB(t1,t2,t3) -> termDB_getVars t1 @ termDB_getVars t2 @ termDB_getVars t3 


