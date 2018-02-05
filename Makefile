FICHIER = "Carnet"
SEVIN = "Sevin"
TMP = "tmp"
LATEX_CMD = lualatex -shell-restricted -synctex=1
EXPORTS = export TEXINPUTS="lib:" ; export shell_escape_commands=bibtex,bibtex8,kpsewhich,makeindex,mpost,repstopdf,gregorio,gregorio-5_0_2,lilypond

document:
	($(EXPORTS) ; $(LATEX_CMD) -draftmode $(FICHIER) ; $(LATEX_CMD) $(FICHIER) ; cp $(FICHIER).pdf $(FICHIER)-fini.pdf)

tmp:
	($(EXPORTS) ; $(LATEX_CMD) $(TMP))

debug:
	($(EXPORTS) ; lualatex -shell-restricted -synctex=1 -file-line-error $(FICHIER))

alpha:
	./alpha.sh
	($(EXPORTS) ; $(LATEX_CMD) Alpha)

final:
	($(EXPORTS) ; $(LATEX_CMD) $(FICHIER) ; $(LATEX_CMD) $(FICHIER))

sevin:
	($(EXPORTS) ; $(LATEX_CMD) $(SEVIN) ; grep '(rerunfilecheck)' $(SEVIN).log && echo 'Relancez la compilation pour obtenir le document définitif.')

todo:
	grep -R '%TODO' [!README]*[!Fait]*[!.sh] | grep -v \~ | sed s/'%TODO'//g | sed s/'%\\lilypondfile'/\:/g > TODO

midi:
	cd Partitions ; ./midi.sh

