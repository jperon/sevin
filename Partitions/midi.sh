for f in $(find . -type d) ; do
	cd $f
	lilypond *.ly
	cd -
done
