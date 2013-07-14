pdf:
	lilypond-book -f latex --pdf --latex-program=lualatex --output=Fait/ Carnet.tex
	(cd Fait ; rm Carnet.toc ; lualatex Carnet.tex ; makeindex -s ../manuel.ist Carnet.idx ; lualatex Carnet.tex)
