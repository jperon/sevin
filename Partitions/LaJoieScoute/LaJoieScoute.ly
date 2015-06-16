\version "2.12.1"
\language "français"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 2=70
  \time 4/4
  \key fa \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

MusiqueTheme = \relative do' {
	\partial 2 fa4 fa
	fa4 mi8 fa sol fa mi fa
	sol4 do, sol' sol
	sol4 fa8 sol la sol fa sol
	la4 fa do' fa
	re4. do8 sib4 re
	do2 la4 do
	sib4. la8 sol4 sib
	la2 do4^Tous fa
	re4. do8 sib4 re
	do2 la4 do
	sib4. la8 sol4 mi
	\partial 2 fa2\fermata \bar "|."
}

Paroles = \lyricmode {
	Frè -- res Scouts, le so -- leil do -- re les ten -- tes,
	Ses ray -- ons, sur les on -- des mi -- roi -- tan -- tes,
	Font jail -- lir dans les ro -- seaux
	Les chan -- sons de mille oi -- seaux,
	\italique Font jail -- lir dans les ro -- seaux
	Les chan -- sons de mille oi -- seaux,
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
