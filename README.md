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
<li> ./lnsql <folder-name>
</ul>
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
	run./testAll.sh in the folder Lang-n-Check to see if tests are successful.  <br />
	This is a bash script that checks that all generated tables in the .tbl files are empty (this means successful tests). 
<li> ./lnsql Example_queries <br />
	check tables in .tbl files in the folder "Example_queries/answers" to see the results. 
</ul> 

To clean: <br />
<ul>
<li> make clean 
	<br /> (removes compilation files and executable) 
</ul>
<br />





