# Lang-SQL: A Query Language for Language Analysis 

Author: Matteo Cimini (matteo_cimini@uml.edu)
	<br />
# <a name="instructions"></a>Folder: GSOS-Format
<br />

Quick usage: 
<br />
<ul>
<li> ./lnsql GSOS-Format <br />
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
	<li> process_algebra_priority.lan: : PA + the priority operator. 
	<li> process_algebra_sequence.lan: : PA + the sequential operator ';'. 
	<li> process_algebra_interrupt.lan: : PA + the interrupt operator. 
	<li> process_algebra_loop.lan: : PA + a loop operator. 
	<li> process_algebra_while.lan: : PA + booleans and a while-loop operator. 
		
		
</ul>
<br />


Tests are in "queries.lsql" at lines 21-25:  <br />
<ul>
<li> Test 1 (line 21): Conclusions have the correct form.
<li> Test 2 (line 22): Premises have the correct form.
<li> Test 3 (line 23): Sources of premises come from the source of the conclusion.
<li> Test 4 (line 24): Variables of the sources of the conclusion and variables of the targets of the premises are all distinct.
<li> Test 5 (line 25): Variables of the target of the conclusion come from the sources of the conclusion or the targets of the premises.
</ul>

<br />
Outcome of our tests: 
<ul>
<li> If all tests are successful for all the languages in the folder "languages": <b>./lnsql GSOS-Format</b> says that all languages have been processed and returns to the prompt<br />
	<li> Otherwise: <b>./lnsql GSOS-Format</b> halts retuning a Test_Failed exception and shows the tables that have failed a test. 
</ul>
<br />


<br />
Negative tests: (<b>The following tests fail</b>)  
<br />
The following are modifications of process_algebra_sequence.lan. 
<br />
To try negative tests: rename the test from having extension .lan_ to having extension .lan (Example rename test3.lan_ to test3.lan)
<br />
<br />
<ul>
<li> test1.lan: contains the rule (a P) --> P. That is, an ordinary transition rather than a labeled transition.
<li> test2.lan: contains the rule X --(a)--> X. That is, the rule does not apply to a form (op P1 P2 ...).
<li> test3.lan: premise of rule #3 is P1 --> P1'. That is, an ordinary transition rather than a labeled transition.
<li> test4.lan: contains the rule (a (a P)) --(a)--> P. That is, conclusion is not of the form a form (op P1 P2 ...) for variables P1, P2, ... 
<li> test5.lan: contains the rule (a P) -- P --> P. That is, label of conclusion is not a constant
<li> test6.lan: contains the rule for the replication operator (repl P) --(a)--> P' <== (par (repl P)) --(a)--> P'. That is, source of premise is not a variable,
<li> test7.lan: premise of rule #3 is (a P) --(a)--> P1'. That is, source of premise is not a variable.
<li> test8.lan: premise of rule #3 is P1 -- P1 --> P1'. That is, label of premise is not a constant.
<li> test9.lan: premise of rule #3 is P1 --(a)--> (a P). That is, target of premise is not a variable.
<li> testt-10.lan: premise of rule #3 is P1' --(a)--> P1'. That is, the source P1' of the premise is not from the source of the conclusion.
<li> testt-11.lan: premise of rule #3 is P1 --(a)--> P2. That is, the target P2 of the premise is not distinct from the variables in the source of the conclusion.
<li> testt-12.lan: conclusion of rule #3 is(sequence P1 P2) --(a)--> (sequence P1' P3) <== P1 --(a)--> P1'. That is, P3 in the conclusion is not from the targets of premises not the source of the conclusion. 
<li> testt-13.lan: premise of rule #6 is P2 -/-(a)--> P3. That is, it is not a valid shape of negative labeled transition formula. This is a parser error because formulae P -/-(a)--> P are not recognized by the parser. 
<li> testt-14.lan: rule #6 is (sequence P1 P2) --(a)--> P2' <== P2 --(a)--> P2' /\ P2' -/-(a)-->. That is, the source of the negative premise does not come from the source of the conclusion. 
</ul>	



