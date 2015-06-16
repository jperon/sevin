\version "2.12.1"
\language "français"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4=100
  \time 4/4
  \key sib \major
}

MusiqueTheme = \relative do'' {
	\partial 8 fa,8
	sib4 do8 re sib4 do
	re2 r4 r8 re
	fa4. re8 sib[( do16 sib]) la8 sib
	do2 do8 r fa, fa
	mib'4. re8 do[( fa]) mib[( re])
	do4. r8 r4 fa
	re sib8. fa'16 re4 do
	sib4. r8 r2 \bar "||"
	\time 2/4
	sib4 re
	do2
	sol8 sol sol do
	sib4 r
	re,8[( fa]) sol[( sib])
	mib4 do8[( sib])
	sol4 sib
	sol4 fa
	fa4 sib
	la4 r
	do8 do do do
	fa4 r
	fa8 re sib fa
	re'4 re
	sib4 r
	\bar "|."
}

Paroles = \lyricmode {
	C'est un Ma -- ré -- chal lor -- rain,
	Il a, ma foi__ de la grai -- ne_;
	Son -- ne, fifre et tam_ -- bou_ -- rin_!
	C'est un Ma -- ré -- chal lor -- rain.
	
	Lon lon la_! lais -- sez- le pas -- ser,
	Car la Gloire est_ sa mar -- rai -- ne,
	Lon lon la_! lais -- sez- le pas -- ser_:
	Sa -- lue -- rez ja -- mais as -- sez_!
}

\score{
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \new Voice = "theme" {
	\autoBeamOff
	\MetriqueArmure
	\MusiqueTheme
      }
      \new Lyrics \lyricsto theme {
	\Paroles
      }                       
    >>
\layout{}
\midi{}
}
