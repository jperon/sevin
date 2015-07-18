#!/bin/bash
DossierMaitre="$(pwd)"
Partitions="Partitions"

TitreChant="$2"
NomFichiers="$1"

echo $NomFichier $TitreChant

echo '\input{entete}

\begin{document}

\input{'"$Partitions/$NomFichiers/Chant"'}

\end{document}' > tmp.tex

make tmp
