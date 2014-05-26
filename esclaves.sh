Partitions="Partitions"
NomFichiers=`zenity --entry --text 'Nom des fichiers :'`

echo '\lilypondfile[staffsize=12]{'$Partitions/$NomFichiers'/'$NomFichiers.ly'}\n\n\\chanson{'$Partitions'/'$NomFichiers'/'$NomFichiers'}'

if [ ! -d $Partitions/$NomFichiers ] ; then
cp -r 00-Gabarit $Partitions/$NomFichiers

cd $Partitions/$NomFichiers

mv Chant.ly $NomFichiers.ly

mv Paroles.tex $NomFichiers.tex

frescobaldi $NomFichiers.ly &

gedit $NomFichiers.tex &
fi
