\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4=110
  \time 2/4
  \key do \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do'' {
  \partial 4 mi,8 fa
  sol4 sol
  do4 do
  sol4.( fa8)
  mi8 r re mi
  fa8 la la la
  sol8 do do do
  si8 sol la si
  do4 r4
  r4 mi,8 fa
  sol4 sol
  do4 do
  sol4.( fa8)
  mi8 r re mi
  fa8 la la la
  sol8 do do do
  si8 sol la si
  do4 r4
  \bar "||"
  
  mi4.^"Refrain" re8
  do8 r r4
  sol8. sol16 sol8 sol
  fa8 la la la
  re4. do8
  si8 r r4
  sol8. sol16 la8 si
  do4 r
  mi4. re8
  do8 r r4
  sol8. sol16 sol8 sol
  fa8 la la la
  re4. do8
  si8 r r4
  sol8. sol16 la8 si
  do4
  \bar "|."
}

Paroles = \lyricmode {
  Plus de joie, plus de lu -- miè -- re_!
  Plus de joie, plus de lu -- mière,
  Et plus de chants, et plus d'ar -- deur_!
  Si nous som -- mes sur la ter -- re,
  Si nous som -- mes sur la terre,
  Ce n'est pas pour man -- quer d'bon -- heur_!
  
  \italique
  A -- ï -- da_! plus de joie, plus de lu -- miè -- re,
  A -- ï -- da, vi -- ve le so -- leil_!
  A -- ï -- da_! tant que le so -- leil é -- clai -- re,
  A -- ï -- da, vi -- ve le so -- leil_!
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
