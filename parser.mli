
(* The type of tokens. *)

type token = 
  | WHERE
  | VAR
  | UNION
  | STAR
  | SKELETON
  | SEMICOLON
  | SELECT
  | RULE
  | RSQUARE
  | RPAREN
  | ROWS
  | RNAME
  | PREM
  | POSITION
  | PNAME
  | OR
  | OPNAME
  | NTH
  | NOT
  | LSQUARE
  | LPAREN
  | LAST
  | IS
  | INTO
  | INTERSECT
  | INT of (int)
  | INSERT
  | ID of (string)
  | HAVING
  | GROUP
  | GREATER
  | GRAMMARINFO
  | GRAMMAR
  | GETVARS
  | GETSKELETON
  | GETOPNAME
  | GETBOUNDVAR
  | GETBOUNDTERM
  | GETARGS
  | FROM
  | EXCEPT
  | EQUAL
  | EOF
  | DISTINCT
  | DERIVED
  | DEFINE
  | DECLARATIONP
  | COUNT
  | CONSTRUCTED
  | CONCL
  | COMMA
  | CNAME
  | CAT of (string)
  | BY
  | BOUND
  | AS
  | AND
  | ALL
  | ADDPRIMEAT
  | ADDPRIME
  | ADDINDEX

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val mystring: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Query.query)

val file: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> ((Query.query) list)
