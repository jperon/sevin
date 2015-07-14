#!/bin/bash
DossierMaitre="$(dirname ${BASH_SOURCE[0]})"
cd $DossierMaitre
Partitions="Partitions"

IFS=';' read NomFichiers

echo -n $NomFichiers

if [ ! -e "$Partitions/$NomFichiers" ] ; then
    cp -R 00-Gabarit "$Partitions/$NomFichiers"
    TITRE=$(zenity --entry --text='Titre')
    echo 'Titre: '"$TITRE" > "$Partitions/$NomFichiers/infos.txt"
    echo "Fichier: $NomFichiers" >> "$Partitions/$NomFichiers/infos.txt"
    echo '\titre{'"$TITRE"'}

\includely{Partition}

\input{Paroles}' > "$Partitions/$NomFichiers/Chant.tex"
fi

geany "$Partitions/$NomFichiers/infos.txt"
geany "$Partitions/$NomFichiers/Chant.tex"
