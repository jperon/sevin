NomFichiers=`zenity --entry --text 'Nom des fichiers :'`

echo '\lilypondfile[staffsize=12]{'$NomFichiers'/'$NomFichiers.ly'}\n\n\\chanson{Partitions/'$NomFichiers'/'$NomFichiers'}'

if [ ! -d $NomFichiers ] ; then
cp -r 00-Gabarit $NomFichiers

cd $NomFichiers

mv Chant.ly $NomFichiers.ly

mv Paroles.tex $NomFichiers.tex

frescobaldi $NomFichiers.ly &

gedit $NomFichiers.tex &
fi
