\version "2.12.1"
\language "français"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4=90
  \time 2/4
  \key sib \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
	\partial 8 r16 fa
	sib8. do16 re8 do
	sib8 fa re'8. do16
	sib4 re8. do16
	sib4 fa8 fa
	sib8 do re8. mib16
	re8 sib do4~
	do4 mib8. mib16
	re8 sib la do
	sib4. r8 \bar "|."
}

Paroles = \lyricmode {
	Les plus bell's fleurs de Fran -- ce,
	Fleurs de lys, fleurs d'o -- ran -- ge,
	Ce sont les fil -- les que voi -- là,
	Fleurs de lys, fleurs de li -- la_!
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
