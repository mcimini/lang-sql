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
<ul>
<li> All our queries return an empty table for all the languages in the folder "languages". 
	<br /> That is: <b>They all successfully pass our checks</b>. 
</ul>

Negative tests for "queries.lsql":  <br />
<ul>
<li> Query 1 (line 14): Do Evaluation Contexts Cover for the Principal Arguments of Elimination Forms? 
	<br /> remove <b>(app C e)</b> from <b>Context</b> from fpl.cbv.lan
	<br /> returns: <b>app</b> misses an evaluation context for argument 0 (first argument), see <a href = "tests_aux/query1_fpl.txt">output table</a>. 

<li> Query 2 (line 20): Do Evaluation Contexts Cover for the Evaluated Arguments of Values?? 
	<br /> remove <b>(pair v C)</b> from <b>Context</b> from fpl.cbv.lan
	<br /> returns: <b>pair</b> misses an evaluation context for argument 1 (second argument), see <a href = "tests_aux/query2_fpl.txt">output table</a>. 

<li> Query 3 (line 24): Do Evaluation Contexts Cover for the Evaluated Arguments of Reduction Rules? 
	<br /> remove remove <b>(app v C)</b> from <b>Context</b> from fpl.cbv.lan
	<br /> returns: <b>app</b> misses an evaluation context for argument 1 (second argument), see <a href = "tests_aux/query3_fpl.txt">output table</a>. 

<li> Query 4 (line 33): Do Reduction Rules of Elimination Forms Handle All the Values of Their Type?
	<br /> remove <b>(if (ff) E1 E2) --> E2.</b> from fpl.cbv.lan
	<br /> returns: <b>if</b> does not handle <b>ff</b>, see <a href = "tests_aux/query4_1_fpl.txt">output table</a>. 

<li> Query 4 (line 33): Do Reduction Rules of Elimination Forms Handle All the Values of Their Type?
	<br /> remove <b>(head (emptyList)) --> (raise (zero )).</b> from fpl.cbv.lan
	<br /> returns: <b>head</b> does not handle <b>emptyList</b>, see <a href = "tests_aux/query4_2_fpl.txt">output table</a>. 
</ul>







