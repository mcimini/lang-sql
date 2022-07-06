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
<li> The simply-typed lambda-calculus (STLC), STLC with integers, booleans, pairs, lists,
sums, tuples, fix, let, letrec, unit, universal types, recursive
types, option types, exceptions, list operations such
as append, map, mapi, filter, filteri,
range, list length, reverse, and the recursor of natural numbers. 
<li> fpl.lan: A functional language with multiple of the features above: STLC with integers, booleans, pairs, lists, universal types, recursive types, fix, letrec, and exceptions. 
<li> strong_stlc_cbv.lan, strong_stlc_cbv_let.lan, strong_stlc_cbv_let_and_letrec.lan, strong_stlc_cbv_letrecWithType.lan: Strong versions STLC where abstraction, let, and letrec can reduce underneath binders. 
<li> fpl_cbv_with_grammar_of_dependent_types.lan: Adds the grammar of dependent types to fpl.lan. (Only grammar because our queries do not test other parts.) 
<li> stlc_ref_only_grammar.lan: simply-typed lambda-calculus with references. (Only grammar because our queries do not test other parts.) 
<li> stlc_CK.lan, stlc_CEK.lan: CK, and CEK machine. (Only grammar because our queries do not test other parts.) 
</ul>
<br />


What it does:  <br />
<ul>
<li> loads the file "queries.lnsql" in the folder <folder-name>, which contains (possibly multiple) Lang-SQL queries. 
<li> loads all the language definitions .lan in the folder "languages" of <folder-name>. 
<li> for each .lan file, say, myfile.lan, all the queries of "queries.lnsql" are applied to the language,  <br />
	and the output tables are written in myfile.tbl of the folder "answers" of <folder-name>. 
</ul>

Folders to test: 
<br />
<ul>
<li> ./lnsql Lang-n-Check <br />
	see <a href="Lang-n-Check/"> this folder </a> for details on our experiments 
<li> ./lnsql Example_queries <br />
	see <a href="Example_queries/"> this folder </a> for details on our experiments 
</ul> 






