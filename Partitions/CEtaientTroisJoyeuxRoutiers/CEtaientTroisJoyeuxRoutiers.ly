%Compilation:lilypond .ly
%Apercu:evince .pdf
%Esclaves:timidity -ia .midi
\version "2.12.1"
\include "italiano.ly"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4.=110
  \time 6/8
  \key fa \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
	fa4 sol8 la4 sib8
	la4 sol8 fa4 r8
	la4 sib8 do4 do8
	re4. do4 r8 \bar ":|"
	la4 sib8 do4 do8
	do8 sib la sib4 r8
	sol4 la8 sib4 sib8
	sib8 la sol la4 r8
	fa4 sol8 la4 do8
	sol4. fa4 r8 \bar "|."
}

Paroles = \lyricmode {
	C'é -- taient trois joy -- eux Rou -- tiers
	Qui pre -- naient la Rou -- te
	Pour ren -- dre ser -- vi -- ce de_- ci,
	Pour ren -- dre ser -- vi -- ce de_- là,
	Pour ren -- dre ser -- vi -- ce.
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
