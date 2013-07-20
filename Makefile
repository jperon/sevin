pdf:
	lilypond-book -f latex --pdf --latex-program=lualatex --output=Fait/ Carnet.tex
	(cd Fait ; rm Carnet.toc ; lualatex --shell-escape Carnet.tex ; makeindex -s ../manuel.ist Carnet.idx ; lualatex --shell-escape Carnet.tex)
