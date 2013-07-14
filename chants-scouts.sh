rm -f Fait/Carnet.tex
lilypond-book -f latex --pdf --latex-program=lualatex --output=Fait/ Carnet.tex
cd Fait
lualatex Carnet.tex
makeindex -s ../manuel.ist Carnet.idx
lualatex Carnet.tex
cd ..
