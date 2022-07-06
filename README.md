# Lang-SQL: A Query Language for Language Analysis 

Author: Matteo Cimini (matteo_cimini@uml.edu)
	<br />
# <a name="instructions"></a>Instructions 
<br />

Requirements: 
<br />
<ul>
<li> To compile and run: Ocaml with the Batteries and Menhir packages is required.
</ul>

Quick usage: 
<br />
<ul>
<li> make 
<li> ./lnsql [folder-name]
</ul>

What it does:  <br />
<ul>
<li> loads the file "queries.lnsql" in the folder [folder-name], which contains (possibly multiple) Lang-SQL queries. 
<li> loads all the language definitions .lan in the folder "languages" of [folder-name]. 
<li> for each .lan file, say, myfile.lan, 
	<br /> - all the queries of "queries.lnsql" are applied to the language,  
	<br /> - the output tables are written in myfile.tbl of the folder "answers" of [folder-name]. 
</ul>

To clean: <br />
<ul>
<li> make clean 
	<br /> (removes compilation files and executable) 
</ul>
<br />


Folders to test: 
<br />
<ul>
<li> ./lnsql Example_queries <br />
	see <a href="Example_queries/"> the "Example_queries" folder </a> for details on these experiments 
<li> ./lnsql Lang-n-Check <br />
	see <a href="Lang-n-Check/"> the "Lang-n-Check" folder </a> for details on these experiments 
</ul> 






