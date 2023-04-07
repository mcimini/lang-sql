# Lang-SQL: A Query Language for Language Analysis 

Author: Matteo Cimini (matteo_cimini@uml.edu)
	<br />
# <a name="instructions"></a>Instructions 
<br />

Requirements: 
<br />
<ul>
<li> To compile and run: Ocaml with the Batteries packages is required.
</ul>

Quick usage: 
<br />
<ul>
<li> make 
<li> ./lnsql [folder-name]
</ul>

What it does:  <br />
<ul>
<li> loads the file "queries.lnsql" of the folder [folder-name], which contains (possibly multiple) Lang-SQL queries. 
<li> loads all the language definitions .lan of the folder "languages" of [folder-name]. 
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
	Examples of Lang-SQL queries.  
	<br />See <a href="Example_queries/"> the "Example_queries" folder </a> for details. 
<li> ./lnsql Lang-n-Check <br />
	Reimplementation of a part of <a href="https://github.com/mcimini/TypeSoundnessCertifier">Lang-n-Check</a> in Lang-SQL.
	<br />See <a href="Lang-n-Check/"> the "Lang-n-Check" folder </a> for details. 
<li> ./lnsql Language_Tests <br /> 
	Examples of language tests in Lang-SQL.
	<br />See <a href="Language_Tests/"> the "Language_Tests" folder </a> for details. 
<li> ./lnsql GSOS-Format <br /> 
	A validator for the GSOS rule format in Lang-SQL.
	<br />See <a href="GSOS-Format/"> the "GSOS-Format" folder </a> for details. 
</ul> 






