# Lang-SQL: A Query Language for Language Analysis 

Author: Matteo Cimini (matteo_cimini@uml.edu)
	<br />
# <a name="instructions"></a>Folder: Lang-n-Check
<br />

Quick usage: 
<br />
<ul>
<li> ./lnsql Lang-n-Check <br />
</ul>

Languages are in the folder "languages": <br />
<ul>
<li> These are the several functional languages of the Lang-n-Check repo. 
	<br />See the  <a href = "https://github.com/mcimini/TypeSoundnessCertifier"> Lang-n-Check repo</a>. 
	<br />The repo is also described in this <a href = "https://dl.acm.org/doi/10.1145/3426425.3426936">research paper</a>.  
</ul>
<br />


Queries of "queries.lsql":  <br />
Lines 2-4 of "queries.lsql"
<ul>
<li> All our queries return an empty table for all the languages in the folder "languages". 
	<br /> That is: <b>They all successfully pass our checks</b>. 
</ul>

Negative tests for "queries.lsql":  <br />
<ul>
<li> Returns correct canonical forms for [1], [2], and [3]. Example: see <a href = "tests_aux/canonical_fpl.txt"> output table for fpl.lan</a>.
<br />([4], [5], and [6] have only grammar so the test does not apply) 
</ul>







