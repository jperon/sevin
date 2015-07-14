#!/bin/bash

echo '\input{entete}

\begin{document}
' > Alpha.tex

find Partitions/* -type d | cut -d/ -f2 | while read c ; do
	if [ "$c" != 'Gregorien' ] ; then
		echo '\chant{'$c'}
' >> Alpha.tex
	fi
done

echo '\end{document}' >> Alpha.tex
