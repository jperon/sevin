\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4=120
  \time 4/4
  \key do \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
  \partial 2
  r8 do do mi | sol4. sol8 la sol fa la | sol4.( fa8 mi)
  do8 do re  | mi4 mi sol8 fa mi fa | re2
  r8 do do mi | sol4. sol8 la sol fa la | sol4.( fa8) mi
  do'8 do do | si4 si la8 la si la | sol2
  r8 sol sol sol | fa4 re la'8 la la la | sol4.( fa8) mi
  sol8 sol sol | fa4 re la'8 la la la | sol4
  sol4 la sol | mi4. mi8 mi mi re mi | fa4.( mi8) re
  sol8 sol sol | sol4 sol la8 sol la sol | mi4
  sol4 do la | si4. la8 sol fa mi re | do4
  do'8 do do4 \bar "|."
}

Paroles = \lyricmode {
  C’é -- tait un soir, sur les bords de l’Y -- ser,
  Un sol -- dat belge qui mon -- tait la fac -- tion_;
  Vinrent à pas -- ser trois gar -- des mi -- li -- tai -- res,
  Par -- mi les -- quelles é -- tait le roi Al -- bert.
  «_Qui vi -- ve là_?_» lui crie la sen -- ti -- nel -- le,
  «_Qui v -- ive là_? vous ne pas -- se -- rez pas_!
  Si vous pas -- sez, crai -- gnez ma ba -- ïon -- net -- te_;
  Re -- ti -- rez_- vous, vous ne pas -- se -- rez pas,
  Re -- ti -- rez_- vous, vous ne pas -- se -- rez pas_!_»
  \italique Hal -- te là_!
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
