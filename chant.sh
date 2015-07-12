#!/bin/bash
DossierMaitre="$(pwd)"
Partitions="Partitions"

TitreChant="$2"
NomFichiers="$1"

echo $NomFichier $TitreChant

echo '\documentclass[a6paper,latin,french,fontsize=9pt]{scrbook}

\usepackage{mudoc}
\usepackage{currfile}
\def\staffsize{12}
\pagestyle{empty}

\begin{document}

\titre{'"$TitreChant"'}

\lilypondfile{'"$Partitions/$NomFichiers/$NomFichiers"'.ly}
\chanson[numero=1]{'"$Partitions/$NomFichiers/$NomFichiers"'}

\end{document}' > tmp.tex

make tmp
