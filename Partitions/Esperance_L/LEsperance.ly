\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4=90
  \time 3/4
  \key do \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
  \partial 4 mi4
  la8 si do4 si8 la
  si8[( sol]) mi4 mi8 mi
  la4 la sol8 sol
  la2 \breathe mi4
  la8 si do4 si8 la
  si8[( sol]) mi4 mi8 mi
  la4 la sol8 sol
  la2 \breathe do8 re
  mi4 mi re8 do
  re4 re do8 si
  do4 do si8 la
  si2 \breathe mi,4
  la8 si do4 si8 la
  si8[( sol]) mi4 mi8 mi
  la4 la sol8 sol
  la2
  \bar "|."
}

Paroles = \lyricmode {
  Le front pen -- ché sur la ter -- re,
  J’al -- lais seul et sou -- ci -- eux,
  Quand ré -- son -- na la voix clai -- re
  D’un pe -- tit oi -- seau joy -- eux.
  Il di -- sait_: «_Re -- prends cou -- ra -- ge,
  L’es -- pé -- rance est un tré -- sor_;
  Mê -- me le plus noir nu -- a -- ge
  A tou -- jours sa fran -- ge d’or._»
}

\score{\transpose mi si,
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
