%{
  open Query
%}

%token <string> ID
%token <string> CAT
%token <int> INT

%token SELECT
%token STAR
%token FROM
%token WHERE
%token DISTINCT
%token AS
%token ROWS
%token GROUP
%token BY
%token HAVING
%token ALL
%token INSERT
%token INTO
%token UNION
%token EXCEPT
%token INTERSECT
%token COMMA
%token LPAREN
%token RPAREN
%token LSQUARE
%token RSQUARE
%token SEMICOLON
%token GETOPNAME
%token GETARGS
%token GETBOUNDTERM
%token GETBOUNDVAR
%token GETVARS
%token ADDINDEX
%token ADDPRIME
%token ADDPRIMEAT
%token GETSKELETON
%token SKELETON
%token DERIVED
%token CONSTRUCTED
%token VAR
%token NTH
%token LAST
%token COUNT 
%token POSITION 
%token CONCL
%token PREM
%token IS
%token BOUND
%token AND
%token OR
%token NOT
%token EQUAL
%token GREATER

%token GRAMMAR
%token GRAMMARINFO
%token DECLARATIONP
%token RULE

%token OPNAME
%token CNAME
%token RNAME
%token PNAME

%token DEFINE


%token EOF

%start file
%type <(Query.query) list> file

%start mystring
%type <Query.query> mystring

%%

file:
  | EOF
    { [TABLE DECLARATIONP] } /*    { Uninstantiated query } */
    /*    { [] } */
  | queries = list(query) EOF
    { queries }

mystring:
  | q = query
    { q }
  | EOF
    { TABLE DECLARATIONP } /*    { Uninstantiated query } */
  | q = query EOF
  	{ q }

query:
  | tbl = table
	{ TABLE tbl }
  | LPAREN q = query RPAREN
	{ q }
  | SELECT distinctOpt = option(DISTINCT) columns = eStar FROM fromQueries = separated_list(COMMA, query) whereOpt = option(where) groupOpt = option(group)
  	{ SELECT(distinctOpt, columns, fromQueries, whereOpt, groupOpt) }
  | q1 = query UNION q2 = query  
    { UNION(q1,q2) }
  | q1 = query EXCEPT q2 = query  
    { EXCEPT(q1,q2) }
  | q1 = query INTERSECT q2 = query  
    { INTERSECT(q1,q2) }
  | DEFINE name = CAT EQUAL q = query 
    { DEFINE(name,q) }
  | INSERT INTO q1 = query q2 = query 
    { INSERT(q1,q2) }

where:
	| WHERE f = formula  
	{ f }

group:
	| GROUP BY ids = separated_list(COMMA, ID) havingOpt = option(having)
	{ (ids, havingOpt) }

having:
	| HAVING allOpt = option(ALL) f = formula
	{ (f, allOpt) }
	
table: 
	| GRAMMAR
		{GRAMMAR}
	| GRAMMARINFO
		{GRAMMARINFO}
	| DECLARATIONP
		{DECLARATIONP}
	| RULE
		{RULE}
  	| cname = CAT
		{ CAT cname }

eStar: 
	| STAR
	{ STAR }
	| columns = separated_list(COMMA, column)
	{ COLUMNS columns }

column: 
	| e1 = e newnameOpt = option(AS rowOpt = option(ROWS { () }) id = ID {id, rowOpt})
	{ (e1, newnameOpt) }

e: 
	| id = ID  /* attribute */
	{ ID id }
    | cname = CAT
  	{ NAME cname }
    | n = INT
  	{ INT n }
    | CONCL
  	{ CONCL }
    | PREM
  	{ PREM }
    | LSQUARE l = separated_list(SEMICOLON, e) RSQUARE
  	{ LIST l }
	| NTH LPAREN e1 = e COMMA e2 = e RPAREN 
	{ NTH(e1, e2) }
	| LAST LPAREN e1 = e COMMA e2 = e RPAREN 
	{ LAST(e1, e2) }
	| GETOPNAME LPAREN e1 = e RPAREN  
	{ GETOPNAME e1 }
	| GETARGS LPAREN e1 = e RPAREN  
	{ GETARGS e1 }
	| GETBOUNDTERM LPAREN e1 = e RPAREN   
	{ GETBOUNDTERM e1 }
	| GETBOUNDVAR LPAREN e1 = e RPAREN   
	{ GETBOUNDVAR e1 }
	| GETVARS LPAREN e1 = e RPAREN   
	{ GETVARS e1 }
	| ADDINDEX LPAREN e1 = e COMMA e2 = e RPAREN 
	{ ADDINDEX(e1,e2) }
	| ADDINDEX LSQUARE tag = tag RSQUARE LPAREN e1 = e COMMA e2 = e RPAREN 
	{ ADDINDEXTAG(tag,e1,e2) }
	| ADDPRIME LPAREN e1 = e RPAREN   
	{ ADDPRIME e1 }
	| ADDPRIMEAT LPAREN e1 = e COMMA e2 = e RPAREN 
	{ ADDPRIMEAT(e1,e2) }
	| GETSKELETON LPAREN e1 = e COMMA cname = CAT RPAREN  
	{ GETSKELETON(e1,cname) }
    | COUNT LPAREN RPAREN 
  	{ COUNT }
    | POSITION LPAREN RPAREN 
  	{ POSITION }

tag: 
	| OPNAME
	{ OPNAME }
	| CNAME
	{ CNAME }
	| RNAME
	{ RNAME }
	| PNAME
	{ PNAME }

formula:
	| e1 = e IS BOUND  
	{ ISBOUND e1}
	| e1 = e EQUAL e2 = e 
	{ EQUAL(e1,e2) }
	| e1 = e GREATER e2 = e 
	{ GREATER(e1,e2) }
	| e1 = e IS DERIVED BY cname = CAT
	{ ISDERIVEDBY(e1,cname)}
	| e1 = e IS cname = CAT VAR
	{ ISCATVAR(e1,cname) }
	| e1 = e IS CONSTRUCTED
	{ ISCONSTRUCTED e1}
	| e1 = e IS cname = CAT SKELETON
	{ ISSKELETON(e1,cname)}
	| f1 = formula AND f2 = formula  
	{ AND(f1,f2) }
	| f1 = formula OR f2 = formula 
	{ OR(f1,f2) }
	| NOT LPAREN f = formula RPAREN  
	{ NOT f}
    | LPAREN f = formula RPAREN
  	{ f }

	







