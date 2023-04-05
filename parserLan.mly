%{
  open Language
%}

%token <string> VARLEX
%token <string> VARTERM
%token <int> INT
%token GRAMMARASSIGN
%token MID
%token COMMA
%token PROVIDED
%token COLON
%token TURNSTYLE
%token AND
%token LEFTPAR  
%token RIGHTPAR 
%token EMPTYCTX 
%token DOT 
%token STEP 
%token VALUECTX 
%token EXPCTX 
%token GAMMA 
%token VARX 
%token VARBIGX 
%token LEFTSQUARE 
%token RIGHTSQUARE 
%token SUBSTBAR 
%token VALUEPRED 
%token DIRECTIVE 
%token SUBTYPING 
%token SEMICOLON

%token LABELEDSTEP 
%token NOSTEP 

%left EXEC

%token EOF

%start fileLan
%type <Language.language> fileLan

%%

fileLan:
  | EOF
    { Language([], []) }
  | lan = language EOF
    { lan }

language :
	| grammar = list(grammarLine) rules = list(rule) 
  		{   let unusedVar = ruleCounter := 0 in Language(grammar, rules) }
 
term :  
  | LEFTPAR opname = VARLEX ts = list(term) RIGHTPAR	
    { Constr(opname, ts) } 
  | VARX
    { BoundVar }
  | VARBIGX
    { BoundTypeVar }
  | var = VARTERM
    { LangVar(var) }
  | LEFTPAR VARX RIGHTPAR t = term      
    { Abs(t) }  
  | LEFTPAR VARBIGX RIGHTPAR t = term     
  	{ AbsType(t) } 
  | VALUECTX
      { LangVar "v" } 
  | EXPCTX
      { LangVar "e" } 
  | t1 = term LEFTSQUARE t2 = term SUBSTBAR t3 = term RIGHTSQUARE
      { Substitution(t1,t2,t3) } 

rule : 
  | f = formula DOT
    { let unusedVar = ruleCounter := !ruleCounter + 1 in Rule("rule" ^ string_of_int (!ruleCounter), [],f) }
  | f = formula PROVIDED premises = separated_list(AND, formula) DOT
    { let unusedVar = ruleCounter := !ruleCounter + 1 in Rule("rule" ^ string_of_int (!ruleCounter),premises,f) }

formula : 
  | gammaTerm = assumption option(MID VARTERM { true }) TURNSTYLE t1 = term COLON t2 = term
    { Formula("typeOf", [gammaTerm ; t1 ; t2]) }
  | t1 = term SUBTYPING t2 = term 
    { Formula("subtype", [t1 ; t2]) }
  | t1 = term STEP t2 = term 
    { Formula("step", [t1 ; t2]) }
  | t1 = term SEMICOLON t2 = term  STEP t3 = term SEMICOLON t4 = term
    { Formula("step", [t1 ; t2 ; t3 ; t4]) }
  | VALUEPRED t = term 
	{ Formula("value", [t]) }
  | t1 = term LABELEDSTEP t2 = term STEP t3 = term 
    { Formula("step", [t1 ; t2 ; t3]) }
  | t1 = term NOSTEP t2 = term STEP
    { Formula("nstep", [t1 ; t2]) }
  | LEFTPAR opname = VARLEX ts = list(term) RIGHTPAR
    { Formula(opname, ts) }

assumption : 
  | GAMMA 
    { LangVar "Gamma" }
  | GAMMA COMMA VARX COLON t = term
    { Constr("gammaAddx", [t]) }
  | GAMMA COMMA VARBIGX 
	{ Constr("gammaAddX", []) }

grammarLine : 
	| category = VARTERM metavar = option(VARTERM) GRAMMARASSIGN ts = separated_list(MID, term)	
	{ GrammarLine(category,metavar, Some ts) }
	| category = VARTERM metavar = option(VARTERM) GRAMMARASSIGN EMPTYCTX MID ts = option(separated_list(MID, term))	
	{ if category = "C" then GrammarLine("Context",Some "C",ts) else GrammarLine(category,metavar,ts) }

directives : 
	| DIRECTIVE list(tagInfo) DOT	
	{ true }
	| DIRECTIVE list(tagInfo) rule	
	{ true }

tagInfo : 
	| VARLEX	
	| VARTERM
	| INT	
	| COLON	
	{ true }
  