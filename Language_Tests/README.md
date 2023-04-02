# Lang-SQL: A Query Language for Language Analysis 

Author: Matteo Cimini (matteo_cimini@uml.edu)
	<br />
# <a name="instructions"></a>Folder: Language_Tests
<br />

Quick usage: 
<br />
<ul>
<li> ./lnsql Language_Tests <br />
</ul>

Tests are in the file "queries.lsql": <br />

<ul>
<li> Test (a) (Line 6): There Are No Operators That Evaluate Underneath a Binder 
<li> Test (b) (Line 16 and Line 24): Errors Must Be Typed at Any Type
<li> Test (c) (Line 31): References Must Be Invariant 
<li> Test (d) (Line 42): There Are No Types That Bind Expressions
</ul>

Languages are in the folder "languages". <br />
<ul>
<li> fpl_with_mistakes.lan: A simply-typed lambda-calculus with references and errors. This language intentionally contains mistakes or unintended features so that Test (a), Test (b), and Test (c) fail. 
<li> fpl_fixed_testA.lan: this is fpl_with_mistakes where we have fixed Test (a).
<li> fpl_fixed_tests_A_B.lan: this is fpl_fixed_testA.lan where we have also fixed Test (b). 
<li> fpl_fixed_tests_A_B_C.lan: this is fpl_fixed_tests_A_B.lan where we have also fixed Test (c). 
<li> [lambda-calculi] The simply-typed lambda-calculus (STLC), and starting from STLC the repo contains a language definition for each of the following types/operators added to STLC: integers, booleans, pairs, lists, 
sums, tuples, fix, let, letrec, unit, universal types, recursive
types, option types, exceptions, the recursor of natural numbers, list operations such
as append, map, mapi, filter, filteri,
range, list length, and reverse.  
<li> [strong-calculi] strong_stlc_cbv.lan, strong_stlc_cbv_let.lan, strong_stlc_cbv_let_and_letrec.lan, strong_stlc_cbv_letrecWithType.lan, strong_stlc_cbv_let_and_letrec.tbl: Variants of STLC where abstraction, let, and letrec can reduce underneath binders. 
<li> fpl_cbv_with_grammar_of_dependent_types.lan: Adds the grammar of dependent types to fpl_cbv.lan. (Only the grammar because our queries do not test other parts.) 
</ul>
Notice: Some files are provided with extension ".lan_" rather than ".lan" so that Lang-SQL does not test them. 
<br />(This is because failed tests quit the computation).  
<br />To test those files (and see them fail our tests): rename them to have extension ".lan". 
<br />(Example: rename fpl_with_mistakes.lan_ to fpl_with_mistakes.lan)

<br /><br />
Outcome of our tests: 
<ul>
<li> fpl_with_mistakes.lan fails Test (a), Test (b), and Test (c). Passes Test (d).
<li> fpl_fixed_testA.lan passes Test (a), fails Test (b), and Test (c). Passes Test (d).
<li> fpl_fixed_testA_B.lan passes Test (a) and Test (b), fails Test (c). Passes Test (d).
<li> fpl_fixed_testA_B_C.lan passes all our tests (Test (a), Test (b), Test (c), Test (d)).
<li> [lambda-calculi]: each passes all our tests (Test (a), Test (b), Test (c), Test (d)).
<li> [strong-calculi] each fails Test (a). Passes all other tests (Test (b), Test (c), Test (d)).
<li> [fpl_cbv_with_grammar_of_dependent_types.lan] fails Test (d). Passes all other tests (Test (a), Test (c), Test (c)).	
</ul>

