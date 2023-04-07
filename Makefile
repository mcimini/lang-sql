OCAML=ocamlfind ocamlc -w "-8-10-11-14-25-26" -g -package batteries -linkpkg -thread
OUTPUT=lnsql
PARSERLAN=parserLan.mli parserLan.ml lexerLan.ml 

default:
	$(OCAML) query.ml language.ml parser.mli parser.ml lexer.ml $(PARSERLAN) language_table.ml language_to_table.ml pretty_printerQuery.ml pretty_printerTable.ml eval_e.ml eval_formula.ml execQuery.ml main.ml -o $(OUTPUT)

# pretty_printer.ml pretty_printerLan.ml 

clean:
	rm *.cmo
	rm *.cmi
	rm $(OUTPUT)

