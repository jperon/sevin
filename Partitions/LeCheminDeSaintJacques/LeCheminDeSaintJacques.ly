\version "2.16"
\include "italiano.ly"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4=70
  \time 2/4
  \key sib \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

VoixI = \relative do' {
  re4 re
  fa4 fa8 r
  re4 re
  fa4 fa8 r
  fa8 sol fa sol
  re4 re
  re2~
  re4 r
  do8 re do re
  sib4 do
  re2~
  re4 r
  sib'4 sib
  do4 do8 r
  sib4 sib
  do4 do
  re4 do8 re
  sib4 sol
  fa2~
  fa4 r
  sib4 sib
  do4~ do8 r
  sib4 sib
  do4 do
  re4 do8 re
  sol,4 fa
  sib2~
  sib2
}

VoixII = \relative do' {
  sib4 sib
  la4~ la8 r
  sib4 sib
  la4~ la8 r
  re8 mib re mib
  sib4 sib
  sib2~
  sib4 r
  s8 s s s
  s4 s
  sib2~
  sib4 r
  re4 re
  fa4~ fa8 r
  re4 re
  mib4 mib
  fa4 mib8 fa
  re4 mib
  re2~
  re4 r
  re4 re
  fa4~ fa8 r
  re4 re
  mib4 mib
  fa4 mib8 fa
  mib4 mib
  re2~
  re2
}

MusiqueTheme = \relative do' {
  <<
    {\VoixI}
    {\VoixII}
  >>
  \bar "|."
}

Paroles = \lyricmode {
  Ô Saint Jacques,
  Aux at -- taques
  Pour Jé -- sus que tu ai -- mais,
  Tu par -- tis vers les som -- mets.
  
  So -- li -- taire,
  Au pé -- ril tu mar -- chais in -- dif -- fé -- rent_;
  Et la Terre
  T'a sa -- cré Fleur des che -- va -- liers er -- rants.
}

\score{
  <<
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \new Voice = "theme" {
        \override Score.PaperColumn #'keep-inside-line = ##t
        \MetriqueArmure
        \MusiqueTheme
      }
    >>
    \new Lyrics \lyricsto theme {
      \Paroles
    }
  >>
  \layout{}
  \midi{}
}
