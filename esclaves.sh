#!/bin/bash
DossierMaitre="$(dirname ${BASH_SOURCE[0]})"
cd $DossierMaitre
Partitions="Partitions"

IFS=';' read TitreChant NomFichiers


echo '\titre{'$TitreChant'}

%TODO:Partition:'"$TitreChant"':\lilypondfile{'$Partitions'/'$NomFichiers'/'$NomFichiers'.ly}
\chanson[numero=1]{'$Partitions'/'$NomFichiers'/'$NomFichiers'}'
