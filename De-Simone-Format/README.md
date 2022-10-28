# Lang-SQL: A Query Language for Language Analysis 

Author: Matteo Cimini (matteo_cimini@uml.edu)
	<br />
# <a name="instructions"></a>Folder: De-Simone-Format
<br />

Quick usage: 
<br />
<ul>
<li> ./lnsql De-Simone-Format <br />
</ul>
<br />

Languages are in the folder "languages": <br />
<ul>
<li> process_algebra.lan (called PA below): a subset of Basic Process Algebra with only the terminated process and the prefix operator. 
<li> process_algebra_ACPprojection.lan: PA + projection operator of ACP (Algrebra of Communicating Processes).  
<li> 	process_algebra_CCSchoice.lan: PA + (external) choice operator of CCS (Calculus of Communicating Systems).  
<li> 	process_algebra_CCSparallel.lan: PA + interleaving parallel operator of CCS with no communication among processes. 
	<li> process_algebra_CCScommunication.lan: PA + CCS parallel operator. 
	<li> process_algebra_CSPsynchParallel.lan: PA + the synchronous parallel operator of CSP (Communicating Sequential Processes). 
	<li> process_algebra_Internalchoice.lan: PA + CSP (internal) choice operator. 
	<li> process_algebra_LOTOSdisrupt.lan: PA + disrupt operator from LOTOS (ISO/IEC standard 1989. Language of Temporal Ordering Specification). 
	<li> process_algebra_signaling.lan: PA + signaling operator as formulated in the paper 
	<br>
	Victor Dyseryn, Rob J. van Glabbeek, Peter Höfner. <i>Analysing Mutual Exclusion using Process Algebra with Signals.</i> EXPRESS/SOS 2017. 
	<li> process_algebra_hiding.lan: PA + CSP hiding operator. 
	<li> process_algebra_rename.lan: : PA + CCS rename operator. 
	<li> process_algebra_hourglass.lan: PA + so called 'hourglass' operator from the paper 
	<br>
	Aceto, L., Bloom, B., Vaandrager, F.: <i>Turning sos rules into equations.</i> Information and Computation. 1994.
	<li> process_algebra_leftMerge.lan: PA + left merge operator of ACP (Algrebra of Communicating Processes).  
	<li> process_algebra_restriction.lan: : PA + CCS restriction operator. 
</ul>
<br />


Queries of "queries.lsql":  <br />
<ul>
<li> All our queries return an empty table for all the languages in the folder "languages". 
	<br /> That is: <b>They all successfully pass our checks</b>. 
	<br /> The script "testAll.sh" checks that all the tables in the folder "answers" are empty. 
</ul>


<br />
Negative tests for "queries.lsql":  <br />
<ul>
<li> Query 1 (line 1): The reduction relation does not have the correct signature (Process, then Label, then Process). 
	<br /> replace <b>Relation ::= (step Process Label Process)</b> with <b>Relation ::= (step Label Process Label Process)</b> in process_algebra_CCSparallel.lan 
	<br /> returns: <b>step</b>, for not having the correct signature, see <a href = "tests_aux/negative_query1.txt">output table</a>. 

<li> Query 2 (line 5): Source of a rule is not a skeleton. Here, one of the arguments is not a variable, it has a top-level operator.  (It is in <b>(a (a P))</b> below).
	<br /> replace <b>(a P) --(a)--> P.</b> (first rule) with <b>(a (a P)) --(a)--> P.</b> in process_algebra_CCSparallel.lan 
	<br /> returns: <b>rule1</b> is not valid, see <a href = "tests_aux/negative_query2_a.txt">output table</a>. 

<li> Query 2 (line 5): The label of the step of the conclusion is a process variable rather than a constant. (Label is <b>P</b> below). 
	<br /> replace <b>(a P) --(a)--> P.</b> (first rule) with <b>(a P) -- P --> P.</b> in process_algebra_CCSparallel.lan 
	<br /> returns: <b>rule1</b> is not valid, see <a href = "tests_aux/negative_query2_b.txt">output table</a>. 

<li> Query 3 (line 13): Replication operator <b>repl</b> does not adhere to de Simone's format. Indeed, the source of a premise is not a variable. (It is the premise with <b>(par (repl P))</b> as a source below). 
	<br /> replace the grammar Process with <b>Process P ::= (null) | (a P) | (par P P) | (repl P)</b> in process_algebra_CCSparallel.lan. 
	<br /> add rule <b>(repl P) --(a)--> P' <== (par (repl P)) --(a)--> P'.</b> at the end (rule 4). 
	<br /> returns: <b>rule4</b> is not valid, see <a href = "tests_aux/negative_query3_a.txt">output table</a>. 

<li> Query 3 (line 13): The source of a premise is not a variable. (Another example.) (It is the premise with <b>(a P)</b> as a source below). 
	<br /> replace <b>(par P1 P2) --(a)--> (par P1' P2) <== P1 --(a)--> P1'.</b> (rule 2) with <b>(par P1 P2) --(a)--> (par P1' P2) <== (a P) --(a)--> P1'.</b> in process_algebra_CCSparallel.lan 
	<br /> returns: <b>rule2</b> is not valid, see <a href = "tests_aux/negative_query3_b.txt">output table</a>. 

<li> Query 3 (line 13): The label of a premise step is a process variable. (<b>P1</b> is used as a label below).
	<br /> replace <b>(par P1 P2) --(a)--> (par P1' P2) <== P1 --(a)--> P1'.</b> (rule 2) with <b>(par P1 P2) --(a)--> (par P1' P2) <== P1 -- P1 --> P1'.</b> in process_algebra_CCSparallel.lan 
	<br /> returns: <b>rule2</b> is not valid, see <a href = "tests_aux/negative_query3_c.txt">output table</a>. 

<li> Query 3 (line 13): The target of a premise step is not a process variable. (<b>(a P)</b> is the target of a premise below).
	<br /> replace <b>(par P1 P2) --(a)--> (par P1' P2) <== P1 --(a)--> P1'.</b> (rule 2) with <b>(par P1 P2) --(a)--> (par P1' P2) <== P1 -- (a) -->(a P).</b> in process_algebra_CCSparallel.lan 
	<br /> returns: <b>rule2</b> is not valid, see <a href = "tests_aux/negative_query3_d.txt">output table</a>. 

<li> Query 4 (line 24): The source of a premise is not a variable from the conclusion. (That is the variable <b>P1'</b> in the source of a premise below).
	<br /> replace <b>(par P1 P2) --(a)--> (par P1' P2) <== P1 --(a)--> P1'.</b> (rule 2) with <b>(par P1 P2) --(a)--> (par P1' P2) <== P1' --(a)--> P1'.</b> in process_algebra_CCSparallel.lan 
	<br /> returns: <b>P1' in rule2</b>, see <a href = "tests_aux/negative_query4.txt">output table</a>. 

<li> Query 5 (line 30): Some variable of the source of the conclusion is also used as the target of a step premise. (That is the variable <b>P2</b> below).
	<br /> replace <b>(par P1 P2) --(a)--> (par P1' P2) <== P1 --(a)--> P1'.</b> (rule 2) with <b>(par P1 P2) --(a)--> (par P1' P2) <== P1 --(a)--> P2.</b> in process_algebra_CCSparallel.lan 
	<br /> returns: <b>P2 in rule2</b>, see <a href = "tests_aux/negative_query5.txt">output table</a>. 

<li> Query 6 (line 35): The target of the conclusion contains a variable out of nowhere. (That is the variable <b>P3</b> below).
	<br /> replace <b>(par P1 P2) --(a)--> (par P1' P2) <== P1 --(a)--> P1'.</b> (rule 2) with <b>(par P1 P2) --(a)--> (par P1' P3) <== P1 --(a)--> P1'.</b> in process_algebra_CCSparallel.lan 
	<br /> returns: <b>P3 in rule2</b>, see <a href = "tests_aux/negative_query6_a.txt">output table</a>. 

<li> Query 6 (line 35): Some variable in the target of the conclusion is used as source of a premise. (That is the variable <b>P1</b> below, it took a step in a premise and cannot be used in the target of the conclusion then).
	<br /> replace <b>(par P1 P2) --(a)--> (par P1' P2) <== P1 --(a)--> P1'.</b> (rule 2) with <b>(par P1 P2) --(a)--> (par P1' P1) <== P1 --(a)--> P1'.</b> in process_algebra_CCSparallel.lan 
	<br /> returns: <b>P1 in rule2</b>, see <a href = "tests_aux/negative_query6_b.txt">output table</a>. 

<li> Query 7 (line 41): A variable is used more than once in the target of the conclusion. (The variable <b>P1'</b> is used twice in the target of the conclusion below).
	<br /> replace <b>(par P1 P2) --(a)--> (par P1' P2) <== P1 --(a)--> P1'.</b> (rule 2) with <b>(par P1 P2) --(a)--> (par P1' P1') <== P1 --(a)--> P1'.</b> in process_algebra_CCSparallel.lan 
	<br /> returns: <b>P1' in rule2</b>, see <a href = "tests_aux/negative_query7.txt">output table</a>. 
</ul>





