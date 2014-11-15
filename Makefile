CPU_CORES=`cat /proc/cpuinfo | grep -m1 "cpu cores" | sed s/".*: "//`
LILY_CMD = lilypond -ddelete-intermediate-files \
                    -dno-point-and-click -djob-count=$(CPU_CORES)

carnet:
	./dependances.sh
	lilypond-book -P "$(LILY_CMD)" -f latex --pdf --latex-program=lualatex --output=Fait/ Carnet.tex
	(cd Fait ; rm Carnet.toc ; lualatex -interaction=batchmode --shell-escape Carnet.tex ; makeindex -s ../manuel.ist Carnet.idx ; lualatex -interaction=batchmode --shell-escape Carnet.tex)
	cp Fait/Carnet.pdf .

livret:
	./dependances.sh
	lilypond-book -P "$(LILY_CMD)" -f latex --pdf --latex-program=lualatex --output=Fait/ Livret.tex
	(cd Fait ; rm Livret.toc ; lualatex -interaction=batchmode --shell-escape Livret.tex ; makeindex -s ../manuel.ist Livret.idx ; lualatex -interaction=batchmode --shell-escape Livret.tex)
	cp Fait/Livret.pdf .

debug:
	./dependances.sh
	lilypond-book -P "$(LILY_CMD)" -f latex --pdf --latex-program=lualatex --output=Fait/ Carnet.tex
	(cd Fait ; rm Carnet.toc ; lualatex --shell-escape Carnet.tex ; makeindex -s ../manuel.ist Carnet.idx ; lualatex --shell-escape Carnet.tex)
	cp Fait/Carnet.pdf .

tmp:
	./dependances.sh
	lilypond-book -P "$(LILY_CMD)" -f latex --pdf --latex-program=lualatex --output=Fait/ tmp.tex
	(cd Fait ; rm tmp.toc ; lualatex -interaction=nonstopmode --shell-escape tmp.tex)

sevin:
	./dependances.sh
	lilypond-book -P "$(LILY_CMD)" -f latex --pdf --latex-program=lualatex --output=Fait/ Sevin.tex
	(cd Fait ; rm Sevin.toc ; lualatex --shell-escape Sevin.tex ; makeindex -s ../manuel.ist Sevin.idx ; lualatex -interaction=nonstopmode --shell-escape Sevin.tex)
	cp Fait/Sevin.pdf .

todo:
	grep -R '%TODO' [!README]*[!Fait]*[!.sh] | grep -v \~ | sed s/'%TODO'//g | sed s/'%\\lilypondfile\[staffsize=12\]'/\:/g > TODO

midi:
	cd Partitions ; ./midi.sh
