DossierMaitre="$(pwd)"
Partitions="Partitions"
TitreChant="$(zenity --entry --text 'Titre du chant :')"
NomFichiers="$(zenity --entry --text 'Nom des fichiers :')"

echo -n '\\titre{'$TitreChant'}\n\n%TODO:Partition:'"$TitreChant"':\\lilypondfile[staffsize=12]{'$Partitions/$NomFichiers'/'$NomFichiers.ly'}\n\n\\chanson[numero=1]{'$Partitions'/'$NomFichiers'/'$NomFichiers'}'


echo '%Apercu:qpdfview ./tmp.pdf:
%Cible:tmp:
\\documentclass[a6paper,latin,french,fontsize=9pt]{scrbook}

\\include{chantsscouts}
\\include{gredoc}
\\providecommand{\\cantus}[4]{\\partition{#1}{#2}{#3 #4}}

\\begin{document}

\\titre{'"$TitreChant"'}

%TODO:\\lilypondfile[staffsize=12]{'"$Partitions/$NomFichiers/$NomFichiers"'.ly}
\\chanson[numero=1]{'"$Partitions/$NomFichiers/$NomFichiers"'}

\\end{document}' > tmp.tex


if [ ! -d $Partitions/$NomFichiers ] ; then
cp -r 00-Gabarit $Partitions/$NomFichiers

cd $Partitions/$NomFichiers

mv Chant.ly $NomFichiers.ly

mv Paroles.tex $NomFichiers.tex

frescobaldi $NomFichiers.ly &

gedit $NomFichiers.tex &
fi

cd "$DossierMaitre"
gedit tmp.tex &
