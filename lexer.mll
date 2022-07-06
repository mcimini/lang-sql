{
  open Lexing
  open Parser
  exception Error of string


let next_line lexbuf =
  let pos = lexbuf.lex_curr_p in
  lexbuf.lex_curr_p <-
    { pos with pos_bol = lexbuf.lex_curr_pos;
               pos_lnum = pos.pos_lnum + 1
    }

}

let id = ['a'-'z']['a'-'z' 'A'-'Z' '0'-'9' '-']*
let category = ['A'-'Z']['a'-'z' 'A'-'Z' '0'-'9' '-']* 

rule token = parse
    [' ' '\t']  { token lexbuf }
  | ['\r' '\n']  { next_line lexbuf; token lexbuf }
  | "SELECT"               { SELECT }
  | "*"               { STAR }
  | "FROM"               { FROM }
  | "WHERE"               { WHERE }
  | "DISTINCT"               { DISTINCT }
  | "AS"               { AS }
  | "ROWS"               { ROWS }
  | "GROUP"               { GROUP }
  | "BY"               { BY }
  | "HAVING"               { HAVING }
  | "ALL"               { ALL }
  | "INSERT"               { INSERT }
  | "INTO"               { INTO }
  | "UNION"               { UNION }
  | "EXCEPT"               { EXCEPT }
  | "INTERSECT"               { INTERSECT }
  | ","               { COMMA }
  | "("               { LPAREN }
  | ")"               { RPAREN }
  | "["               { LSQUARE }
  | "]"               { RSQUARE }
  | ";"               { SEMICOLON }
  | "GET-OPNAME"      { GETOPNAME }
  | "GET-ARGS"      { GETARGS }
  | "GET-BOUND-TERM"      { GETBOUNDTERM }
  | "GET-BOUND-VAR" 	{ GETBOUNDVAR }
  | "GET-VARS" 	{ GETVARS }
  | "ADD-INDEX" 	{ ADDINDEX }
  | "ADD-PRIME" 	{ ADDPRIME }
  | "ADD-PRIME-AT" 	{ ADDPRIMEAT }
  | "GET-SKELETON" 	{ GETSKELETON }
  | "SKELETON" 	{ SKELETON }
  | "DERIVED" 	{ DERIVED }
  | "CONSTRUCTED" 	{ CONSTRUCTED }
  | "VAR" 	{ VAR }
  | "NTH" 	{ NTH }
  | "LAST" 	{ LAST }
  | "COUNT" 	{ COUNT }
  | "POSITION" 	{ POSITION }
  | "CONCL" 	{ CONCL }
  | "PREM" 	{ PREM }
  | "IS"      { IS }
  | "BOUND"      { BOUND }
  | "AND"      { AND }
  | "OR"      { OR }
  | "NOT"      { NOT }
  | "="      { EQUAL }
  | ">"      { GREATER }
  | "grammar"      { GRAMMAR }
  | "grammar-info"      { GRAMMARINFO }
  | "declarationp"      { DECLARATIONP }  
  | "rule"      { RULE }  
  | "OPNAME"      { OPNAME }  
  | "CNAME"      { CNAME }  
  | "RNAME"      { RNAME }  
  | "PNAME"      { PNAME }  
  | "DEFINE"      { DEFINE }  
  | id             { ID (Lexing.lexeme lexbuf) }
  | category             { CAT (Lexing.lexeme lexbuf) }
  | ['0'-'9']+ as i { INT (int_of_string i) }  
  | eof             { EOF }
  | _
	    { raise (Error (Printf.sprintf "At offset %d: unexpected character %s.\n" (Lexing.lexeme_start lexbuf) (Lexing.lexeme lexbuf))) }
{
}
