\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4=100
  \time 4/4
  \key do \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
  \partial 2 r8 do8 do re
  mi2 r8 mi mi mi
  do2 r8 sol' sol sol
  la2 r8 la la do,
  sol'2 r8 sol sol sol
  la2 r8 la la do,
  sol'2 r8 do, do re
  mi4 mi8 mi fa re do si
  do2
  \bar "||"

  r8^"Refrain" mi fa sol
  la2 r8 la sol la
  si2 r8 si la si
  do4 do si la
  sol2 r8 sol sol sol
  fa2 r8 la sol fa
  mi2 r8 do do re
  mi4 mi8 mi fa re do si
  do2
  \bar "|."
}

Paroles = \lyricmode {
  Le temps est loin de nos vingt ans,
  Des coups de poing, des coups de sang,
  Mais qu’à c’la n’tienne, c’est pas fi -- ni,
  On peut chan -- ter quand le verre est bien rem -- pli.

  Bu -- vons en -- core, une der -- nière fois,
  À l’a -- mi -- tié, l’a -- mour, la joie,
  On a fê -- té nos re -- trou -- vailles_;
  Ça m’fait d’la peine,
  Mais il faut que je m’en aille.
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
