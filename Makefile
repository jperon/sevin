pdf:
	lilypond-book -f latex --pdf --latex-program=lualatex --output=Fait/ Carnet.tex
	./dependances.sh
	(cd Fait ; rm Carnet.toc ; lualatex --shell-escape Carnet.tex ; makeindex -s ../manuel.ist Carnet.idx ; lualatex -interaction=nonstopmode --shell-escape Carnet.tex)
	cp Fait/Carnet.pdf .
