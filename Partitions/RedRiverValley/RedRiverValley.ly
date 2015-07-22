\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4=100
  \time 4/4
  \key fa \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
  \partial 4 do8 fa
  la4 la8 sol fa sol fa re
  fa2. do8 fa
  la4 la8 la do4 sib8 la
  sol2 r4 do8 sib
  la4 la8 sol fa4 sol8 la
  do8 sib4 r8 r4 re,8 re
  do4 fa8 sol la8 la sol sol
  fa2 r4
  \bar "||"
  do8^"Refrain" fa
  la4 la8 sol fa sol fa re
  fa2. do8 fa
  la4 la8 la do4 sib8 la
  sol2 r4 do8 sib
  la4 la8 sol fa4 sol8 la
  do8 sib4 r8 r4 re,8 re
  do4 fa8 sol la4 sol8 sol
  fa2 r4
  \bar "|."
}

Paroles = \lyricmode {
  Les pion -- niers sont pas -- sés a -- vant le jour
  Dans les rues du vil -- lage ac -- ca -- blé_;
  Et mon cœur a fré -- mi à leur pas lourd,
  Sur les bords de la \italique Red Ri -- ver Val -- ley.

  \roman
  Ô Sei -- gneur, la roue tourne en -- tre tes mains_:
  Où je vais au -- jourd’ hui je ne sais_;
  Ô Sei -- gneur la roue tourne en -- tre tes mains,
  Mais je veux re -- trou -- ver les pion -- niers.
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
