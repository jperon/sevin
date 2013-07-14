\version "2.12.1"
\include "italiano.ly"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4=100
  \time 2/4
  \key mib \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do'' {
	sib4 sib8 sib
	do4 do8 do16 re
	mib8 mib re do
	do4 sib8 r
	sib8 sol sib fa
	sib8 mib,16 mib mib8 mib16 fa
	sol8 sol sib sol
	fa8 fa mib mib16 fa
	sol8 sol sib sol
	fa4 mib \bar "|."
}

Paroles = \lyricmode {
	Fon -- dons la Meu -- te,
	Ah_! voy -- ez la jo -- lie Meu -- te_!
	Meu -- ti, meu -- tez, meu -- tons, les Loups,
	Ah_! voy -- ez la jo -- lie meut' de Loups,
	Ah_! voy -- ez la jo -- lie meu -- te.
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
