# Lang-SQL: A Query Language for Language Analysis 

Author: Matteo Cimini (matteo_cimini@uml.edu)
	<br />
# <a name="instructions"></a>Instructions 
<br />

Quick usage: 
<br />
<ul>
<li> ./lnsql Example_queries <br />
</ul>

Languages are in the folder "languages": <br />
<ul>
<li> [1] The simply-typed lambda-calculus (STLC), STLC with integers, booleans, pairs, lists,
sums, tuples, fix, let, letrec, unit, universal types, recursive
types, option types, exceptions, list operations such
as append, map, mapi, filter, filteri,
range, list length, reverse, and the recursor of natural numbers. 
<li> [2] fpl.lan: A functional language with multiple of the features above: STLC with integers, booleans, pairs, lists, universal types, recursive types, fix, letrec, and exceptions. 
<li> [3] strong_stlc_cbv.lan, strong_stlc_cbv_let.lan, strong_stlc_cbv_let_and_letrec.lan, strong_stlc_cbv_letrecWithType.lan, strong_stlc_cbv_let_and_letrec.tbl: Strong versions STLC where abstraction, let, and letrec can reduce underneath binders. 
<li> [4] fpl_cbv_with_grammar_of_dependent_types.lan: Adds the grammar of dependent types to fpl.lan. (Only grammar because our queries do not test other parts.) 
<li> [5] stlc_ref_only_grammar.lan: simply-typed lambda-calculus with references. (Only grammar because our queries do not test other parts.) 
<li> [6] stlc_CK.lan, stlc_CEK.lan: CK, and CEK machine. (Only grammar because our queries do not test other parts.) 
</ul>
<br />


Query 1: How Many Typing Rules Does a Constructor Have? <br />
Lines 2-4 of "queries.lsql"
<ul>
<li> Returns count = 1 for all languages in [1], [2], and [3]. Example: see <a href = "tests_aux/number_typing_rules_fpl.txt"> output table for fpl.lan.  
<br />([4], [5], and [6] have only grammar so the test does not apply) 
</ul>

Query 2: [What are the Canonical Forms of the Language? <br />
Lines 6-8 of "queries.lsql"
<ul>
<li> Returns correct canonical forms for [1], [2], and [3]. Example: see <a href = "tests_aux/canonical_fpl.txt"> output table for fpl.lan.  
<br />([4], [5], and [6] have only grammar so the test does not apply) 
</ul>

Query 3: [What are the Elimination Forms of the Language? <br />
Lines 11-19 of "queries.lsql"
<ul>
<li> Returns correct elimination forms for [1], [2], and [3]. Example: see <a href = "tests_aux/elimination_forms_fpl.txt"> output table for fpl.lan.  
<br />([4], [5], and [6] have only grammar so the test does not apply) 
</ul>

Query 4: [What operators reduce underneath a binder? <br />
Lines 21-27 of "queries.lsql"
<ul>
<li> Returns abs, let, letrec for [3]: Example: see <a href = "tests_aux/strong_let_letrec.txt"> output table for strong_stlc_cbv_let_and_letrec.tbl.
<br />Returns an empty table for [1], [2], [4], [5], [6]. 
</ul>

Query 5: [What categories can be bound in types? <br />
Lines 30-33 of "queries.lsql"
<ul>
<li> Returns mu with Type, all with Type and pie with Expression where these types are defined. 
	<br /> Example: see <a href = "tests_aux/bound_in_types_pie.txt"> output table for fpl_cbv_with_grammar_of_dependent_types.lan.
</ul>

Query 6: [What is the state of the language? <br />
Lines 36-38 of "queries.lsql"
<ul>
<li> Returns Heap in [5], see <a href = "tests_aux/state_references.txt"> output table for stlc_ref_only_grammar.lan. 
	<br />Returns Continuation in CK of [6], see <a href = "state_CK.txt"> output table for stlc_CK.lan. 
	<br />Returns Continuation and Environment in CEK of [6], see <a href = "state_CEK.txt"> output table for stlc_CEK.lan. 
<br />Returns an empty table for [1], [2], [3], [4]. 
</ul>








