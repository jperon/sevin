\version "2.16"
\include "italiano.ly"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4=70
  \time 3/4
  \key fa \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

RefrainI = \relative do' {
  \partial 4 do4
  do'2^\markup {Refrain (Chœur)} re8 re
  do4 do8 \oneVoice r \voiceOne sib4
  la2 sib8 sib
  do2 sol4
  sib4 la sol8 fa
  sol8 sol \oneVoice r4 \voiceOne la
  fa2 \breathe la4
  sol2 do,4
  do'2 re8 re
  do4 do8 \oneVoice r \voiceOne sib4
  la2 sib8 sib
  do4. \oneVoice r8 \voiceOne sol4
  sib4 la sol8 fa
  sol4 sol la\>
  fa2 sol4
  fa2\!\fermata
  \bar "||"
}

RefrainII = \relative do' {
  \partial 4 do4
  la'2 sib8 sib
  la4 la8 s sol4
  fa2 sol8 sol
  la2 sol4
  sol4 fa mi8 fa
  mi8 mi s4 fa
  do2 do4
  do2 do4
  la'2 sib8 sib
  la4 la8 s sol4
  fa2 sol8 sol
  la4. s8 sol4
  sol4 fa fa8 fa
  mi4 mi fa
  do2 do4
  fa2
}

Couplet = \relative do' {
  do4^\markup {Couplet (Solo)}
  fa4 la sib8 la
  do4 do sib
  la4. sol8 fa sol
  fa2 do4
  fa4 la sib8 la
  do4 do \breathe sib
  la4. sol8 fa sol
  sol2 \bar "|."
}

Paroles = \lyricmode {
  Chez nous soy -- ez Rei -- ne,
  Nous som -- mes à vous,
  Fon -- dez vo -- tre do -- mai -- ne
  Chez nous, chez nous,
  Soy -- ez la Ma -- do -- ne
  Qu'on prie à ge -- noux,
  Qui sou -- rit et par -- don -- ne
  Chez nous, chez nous.
  
  Nous a -- vons votre im -- ma -- ge
  Chez nous sur nos au -- tels,
  Et vo -- tre doux vi -- sa -- ge
  Est un re -- flet du ciel.
}

\score{
  <<
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \new Voice = "voixI" {\voiceOne
        \override Score.PaperColumn #'keep-inside-line = ##t
        \MetriqueArmure
        \RefrainI
        \oneVoice
        \Couplet
      }
      \new Voice = "voixII" {\voiceTwo
        \override Score.PaperColumn #'keep-inside-line = ##t
        \MetriqueArmure
        \RefrainII
      }
    >>
    \new Lyrics \lyricsto voixI {
      \Paroles
    }
  >>
  \layout{}
  \midi{}
}
