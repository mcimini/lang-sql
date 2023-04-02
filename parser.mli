
(* The type of tokens. *)

type token = 
  | WHERE
  | VAR
  | UNION
  | TYPEOFOUT
  | TYPEOFEXP
  | TEST
  | SUBTYPERIGHT
  | SUBTYPELEFT
  | STEPTARGET
  | STEPSOURCE
  | STAR
  | SKELETON
  | SEMICOLON
  | SELECT
  | RULE
  | RSQUARE
  | RPAREN
  | ROWSTAR
  | ROWS
  | RNAME
  | PREMS
  | PREM
  | POSITION
  | PNAME
  | OR
  | OPNAME
  | NTH
  | NOT
  | LSTEPTARGET
  | LSTEPSOURCE
  | LSTEPLABEL
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
  | EMPTY
  | DISTINCT
  | DISJOINT
  | DERIVED
  | DEFINE
  | DECLARATIONP
  | COUNT
  | CONTAINS
  | CONSTRUCTED
  | CONSTANT
  | CONCLS
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
