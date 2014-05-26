\version "2.16"
\include "italiano.ly"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 2=80
  \time 3/2
  \key mib \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
  \partial 2 mib2\mf
  mib4 fa sol mib sol lab
  sib1 mib,2
  mib4 fa sol mib sol lab
  sib1 mib4 re
  do2 sib mib4 re
  do2 sib\fermata \bar "||"
  mib2\f
  mib4 sib sib lab sol lab
  sib1 mib2
  mib4 sib sib lab sol lab
  sib1 lab4\f sol
  fa2 mib lab4 sol
  fa2 mib mib'4^"Chœur" re
  do2\cresc sib mib4 re
  do2 sib lab4\ff sol
  fa1.
  mib1. \bar "||"
  do'1.^\markup {\italic {ad lib.} pour finir}
  sib1. \bar "|."
}

Paroles = \lyricmode {
  À toi, No -- tre_- Da -- me de Joie,
  Ce chant que nos â -- mes en -- voient,
  Al -- le -- lu -- ia_! Al -- le -- lu -- ia_!
  Qu'il ail -- le par de -- là les monts
  Te dire, ô Mè -- re, nous t'ai -- mons.
  O Ma -- ri -- a,
  Al -- le -- lu -- ia_! Al -- le -- lu -- ia_!
  Al -- le -- lu -- ia_! Al -- le -- lu -- ia_!
  A -- men.
}

\score{
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \new Voice = "theme" {
	\override Score.PaperColumn #'keep-inside-line = ##t
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
