\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4=100
  \time 4/4
  \key mib \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
  fa4 do8 fa fa sol fa4
  mib8 fa sol16 sol sol sol do,8 sol'16 sol sol8 lab
  \time 3/4
  sib8 do sib16 do sib lab sol4
  \time 4/4
  fa4 do8 fa fa sol fa4
  mib8 lab sol fa mib4 fa
  do8. do16 mib8 fa sol lab sol[ fa]~
  fa1
  \bar "|."
}

Paroles = \lyricmode {
  Dans les pri -- sons de Nan -- tes,
  Lan -- di -- di -- di -- du -- dan, di -- du -- di,
  lan -- di, lan -- di -- di -- di -- du -- dan_!
  Dans les pri -- sons de Nan -- tes,
  Y’a -- vait un pri -- son -- nier,
  Y’a -- vait un pri -- son -- nier.
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
