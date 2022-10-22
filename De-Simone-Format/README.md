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
	Aceto, L., Bloom, B., Vaandrager, F.: <i>Turning sos rules into equations. Information and Computation.</i> 1994.
	<li> process_algebra_leftMerge.lan: PA + left merge operator of ACP (Algrebra of Communicating Processes).  
	<li> process_algebra_restriction.lan: : PA + CCS restriction operator. 
</ul>
<br />

	<br />The repo is also described in this <a href = "https://dl.acm.org/doi/10.1145/3426425.3426936">research paper</a>.  


Queries of "queries.lsql":  <br />
<ul>
<li> All our queries return an empty table for all the languages in the folder "languages". 
	<br /> That is: <b>They all successfully pass our checks</b>. 
	<br /> The script "testAll.sh" checks that all the tables in the folder "answers" are empty. 
</ul>





