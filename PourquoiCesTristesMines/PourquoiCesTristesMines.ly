\version "2.12.1"
\include "italiano.ly"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 2=80
  \time 4/4
  \key fa \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
	\partial 4 do4
	fa4. sol8 la4 fa
	sol2 do
	sib4. do8 sol4 do
	fa,2. do4
	fa4. sol8 la4 fa
	sol2 do
	sib4. do8 sol4 do
	fa,2. \bar "||" fa'4^Chœur
	mi4 sol,8 la sib4 re
	do4 fa,8 sol la4 r
	do8 do do do sib4 mi,
	fa4 la do fa
	mi4 sol,8 la sib4 re
	do4 fa,8 sol la4. r8
	do8 do do do sib4 mi,
	\partial 4*3 fa2.\fermata \bar "|."
}

Paroles = \lyricmode {
	Pour -- quoi ces tris -- tes mi -- nes,
	Fil -- les et gar -- çons_?
	Pour qu'el -- les s'il -- lu -- mi -- nent,
	O -- yez nos chan -- sons.
	
	\italique Di -- ya, la la la, di -- ya, la la la_;
	Ya la la la la, di -- ya la la,
	Di -- ya, la la la, di -- ya, la la la_;
	Ya la la la la, di -- ya.
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
