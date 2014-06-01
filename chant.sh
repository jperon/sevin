#!/bin/bash
DossierMaitre="$(pwd)"
Partitions="Partitions"

TitreChant="$2"
NomFichiers="$1"

echo $NomFichier $TitreChant

echo '%Apercu:qpdfview Fait/tmp.pdf:
%Cible:tmp:
\documentclass[a6paper,latin,french,fontsize=9pt]{scrbook}

\include{chantsscouts}
\include{gredoc}
\providecommand{\cantus}[4]{\partition{#1}{#2}{#3 #4}}
\renewcommand{\numtitre}{}
\pagestyle{empty}

\begin{document}

\titre{'"$TitreChant"'}

%TODO:\lilypondfile[staffsize=12]{'"$Partitions/$NomFichiers/$NomFichiers"'.ly}
\chanson[numero=1]{'"$Partitions/$NomFichiers/$NomFichiers"'}

\end{document}' > tmp.tex

make tmp
