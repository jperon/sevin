rm -f Fait/Livret.tex
lilypond-book -f latex --pdf --latex-program=lualatex --output=Fait/ Livret.tex
cd Fait
lualatex Livret.tex
makeindex -s ../manuel.ist Livret.idx
lualatex Livret.tex
cd ..
