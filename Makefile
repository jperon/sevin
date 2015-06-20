FICHIER = "Carnet"
SEVIN = "Sevin"
LATEX_CMD = lualatex -interaction=batchmode -shell-restricted -synctex=1
EXPORTS = export TEXINPUTS="lib:" ; export shell_escape_commands=bibtex,bibtex8,kpsewhich,makeindex,mpost,repstopdf,gregorio,lilypond

document:
	($(EXPORTS) ; $(LATEX_CMD) $(FICHIER) ; grep '(rerunfilecheck)' $(FICHIER).log && echo 'Relancez la compilation pour obtenir le document définitif.' || cp $(FICHIER).pdf $(FICHIER)-fini.pdf)

schola:
	($(EXPORTS) ; $(LATEX_CMD) '\def\dest{schola}\input{$(FICHIER)}' ; $(LATEX_CMD) '\def\dest{schola}\input{$(FICHIER)}')
	cp Fait/$(FICHIER).pdf .

debug:
	($(EXPORTS) ; lualatex -shell-restricted -synctex=1 -file-line-error $(FICHIER))

final:
	($(EXPORTS) ; $(LATEX_CMD) $(FICHIER) ; $(LATEX_CMD) $(FICHIER))

sevin:
	($(EXPORTS) ; $(LATEX_CMD) $(SEVIN) ; grep '(rerunfilecheck)' $(SEVIN).log && echo 'Relancez la compilation pour obtenir le document définitif.')

todo:
       grep -R '%TODO' [!README]*[!Fait]*[!.sh] | grep -v \~ | sed s/'%TODO'//g | sed s/'%\\lilypondfile'/\:/g > TODO

midi:
       cd Partitions ; ./midi.sh

