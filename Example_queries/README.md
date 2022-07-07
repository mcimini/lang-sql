# Lang-SQL: A Query Language for Language Analysis 

Author: Matteo Cimini (matteo_cimini@uml.edu)
	<br />
# <a name="instructions"></a>Folder: Example_queries
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
<li> [2] fpl_cbv.lan: A functional language with multiple of the features above: STLC with integers, booleans, pairs, lists, universal types, recursive types, fix, letrec, and exceptions. 
<li> [3] strong_stlc_cbv.lan, strong_stlc_cbv_let.lan, strong_stlc_cbv_let_and_letrec.lan, strong_stlc_cbv_letrecWithType.lan, strong_stlc_cbv_let_and_letrec.tbl: Variants of STLC where abstraction, let, and letrec can reduce underneath binders. 
<li> [4] fpl_cbv_with_grammar_of_dependent_types.lan: Adds the grammar of dependent types to fpl_cbv.lan. (Only the grammar because our queries do not test other parts.) 
<li> [5] stlc_ref_only_grammar.lan: simply-typed lambda-calculus with references. (Only the grammar because our queries do not test other parts.) 
<li> [6] stlc_CK.lan, stlc_CEK.lan: CK, and CEK machine. (Only the grammar because our queries do not test other parts.) 
</ul>
<br />


Query 1: How Many Typing Rules Does a Constructor Have? <br />
Lines 2-4 of "queries.lsql"
<ul>
<li> Returns count = 1 for all languages in [1], [2], and [3]. Example: see <a href = "tests_aux/number_typing_rules_fpl.txt"> output table for fpl_cbv.lan</a>.  
<br />([4], [5], and [6] have only grammar so the test does not apply) 
</ul>

Query 2: What Are the Canonical Forms of the Language? <br />
Lines 6-8 of "queries.lsql"
<ul>
<li> Returns correct canonical forms for [1], [2], and [3]. Example: see <a href = "tests_aux/canonical_fpl.txt"> output table for fpl_cbv.lan</a>.
<br />([4], [5], and [6] have only grammar so the test does not apply) 
</ul>

Query 3: What Are the Elimination Forms of the Language? <br />
Lines 11-19 of "queries.lsql"
<ul>
<li> Returns correct elimination forms for [1], [2], and [3]. Example: see <a href = "tests_aux/elimination_forms_fpl.txt"> output table for fpl_cbv.lan</a>.  
<br />([4], [5], and [6] have only grammar so the test does not apply) 
</ul>

Query 4: What Operators Reduce underneath a Binder? <br />
Lines 21-27 of "queries.lsql"
<ul>
<li> Returns <b>abs</b>, <b>let</b>, <b>letrec</b> for [3]: Example: see <a href = "tests_aux/strong_let_letrec.txt"> output table for strong_stlc_cbv_let_and_letrec.tbl</a>.
<br />Returns an empty table for [1], [2], [4], [5], [6]. 
</ul>

Query 5: What Categories Can Be Bound in Types? <br />
Lines 30-33 of "queries.lsql"
<ul>
<li> Returns <b>mu</b> with <b>Type</b>, <b>all</b> with<b>Type</b> and <b>pie</b> with <b>Expression</b> where these types are defined. 
	<br /> Example: see <a href = "tests_aux/bound_in_types_pie.txt"> output table for fpl_cbv_with_grammar_of_dependent_types.lan</a>.
</ul>

Query 6: What Is the State of the Language? <br />
Lines 36-38 of "queries.lsql"
<ul>
<li> Returns <b>Heap</b> in [5], see <a href = "tests_aux/state_references.txt"> output table for stlc_ref_only_grammar.lan</a>.
	<br />Returns <b>Continuation</b> in CK of [6], see <a href = "tests_aux/state_CK.txt"> output table for stlc_CK.lan</a>.
	<br />Returns <b>Continuation</b> and <b>Environment</b> in CEK of [6], see <a href = "tests_aux/state_CEK.txt"> output table for stlc_CEK.lan</a>.
<br />Returns an empty table for [1], [2], [3], [4].
</ul>








