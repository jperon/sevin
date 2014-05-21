carnet:
	lilypond-book -f latex --pdf --latex-program=lualatex --output=Fait/ Carnet.tex
	./dependances.sh
	(cd Fait ; rm Carnet.toc ; lualatex -interaction=nonstopmode --shell-escape Carnet.tex ; makeindex -s ../manuel.ist Carnet.idx ; lualatex -interaction=nonstopmode --shell-escape Carnet.tex)
	cp Fait/Carnet.pdf .

sevin:
	lilypond-book -f latex --pdf --latex-program=lualatex --output=Fait/ Sevin.tex
	./dependances.sh
	(cd Fait ; rm Sevin.toc ; lualatex --shell-escape Sevin.tex ; makeindex -s ../manuel.ist Sevin.idx ; lualatex -interaction=nonstopmode --shell-escape Sevin.tex)
	cp Fait/Sevin.pdf .

todo:
	grep -R '%TODO' [!Partitions]*[!Fait]* | grep -v \~ | sed s/'%TODO'//g | sed s/'%\\lilypondfile\[staffsize=12\]'/\:/g > TODO
