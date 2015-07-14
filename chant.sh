#!/bin/bash
DossierMaitre="$(pwd)"
Partitions="Partitions"

TitreChant="$2"
NomFichiers="$1"

echo $NomFichier $TitreChant

echo '\documentclass[a6paper,latin,french,fontsize=9pt]{scrbook}

\usepackage{mudoc}
\def\staffsize{12}
\pagestyle{empty}

\begin{document}

\input{'"$Partitions/$NomFichiers/Chant"'}

\end{document}' > tmp.tex

make tmp
