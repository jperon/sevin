\version "2.12.1"
\include "italiano.ly"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4.=60
  \time 6/8
  \key mib \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
	\partial 8 sib8
	mib8 mib mib sol sol sol
	fa8 mib fa mib4.
	sib'4.(~^Chœur sib4 sol8)
	do8 sib4~ sib^"  Solo" sib8
	do8 mib do sib lab sol
	lab8 sib lab sol mib fa
	sol8. lab16 sol8 fa mib fa
	mib4. mib4^"Chœur (écho)" fa8
	sol4. fa8( mib) fa
	mib2.
	sib'4.~^Tous sib4 sol8
	do8 sib4~ sib sib8
	do8 mib do sib lab sol
	lab8 sib lab sol mib fa
	sol8. lab16 sol8 fa mib fa
	mib4.~ mib4 \bar "|."
}

Paroles = \lyricmode {
	Mes -- si -- re le Roy, nous é -- choit bel hon -- neur,
	\italique Bel hon -- neur_!
	\roman D'ê -- tre les sui -- vants de tant no -- ble Sei -- gneur,
	Ci ve -- nons nous croi -- ser pour le Roy.
	\italique Re -- ce -- vez no -- tre foi_!
	
	\roman Si -- re le Roy_! Ce sont vos es -- coutes
	Qui, par fran -- çoi -- ses routes,
	Sont ve -- nus se croi -- ser pour le Roy.
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
