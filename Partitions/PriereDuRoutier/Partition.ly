\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4=80
  \time 2/4
  \key fa \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
  r8 re re re
  la'4. la8 sol sol la la
  fa8 fa re re mi4 mi8 do
  re2 fa8 mi re do
  re8 mi fa sol la4 la8 sol
  la2 r8 re, re re
  la'4. la8 sol sol la la
  fa4 re8 re mi2
  re4 re fa8 mi re do
  re8 mi fa sol la4 la8 sol
  la2 r8 re re re
  do8 do re re la4. la8
  sol4 sol la8 la fa fa
  mi4 mi fa sol8 fa
  mi8 mi re do re2
  r8 la' la la re4 re8 do
  re4. la8 sib sib sol sol
  la4 r8 la re,4 re
  re8 mi fa sol la la sib la
  sol4 fa mi8 re fa mi
  re4. re8 re4 do
  re8 mi fa sol la4 la
  la8 re do sib la4. sol8
  la2 fa4( mi)
  re2
  \bar "|."
}

Paroles = \lyricmode {
  Sei -- gneur Jé -- sus,
  Qui vous of -- frez à nous, com -- me la Rou -- te vi -- vante
  tout ir -- ra -- di -- ée par la Lu -- miè -- re d’en_- Haut,
  Dai -- gnez vous joindre à nous
  sur le che -- min de la Vie,
  Com -- me vous fî -- tes ja -- dis
  pour les Rou -- tiers d’Em -- ma -- üs.
  Don -- nez_- nous part à votre Es -- prit,
  a -- fin que nous dé -- cou -- vri -- ons
  la voie de vo -- tre plus grand ser -- vice,
  Et que, nour -- ris de l’Hos -- tie,
  ce vrai pain des Rou -- tiers,
  Nous che -- mi -- nions al -- lè -- gre -- ment,
  mal -- gré fa -- tigues et con -- tra -- dic -- ti -- ons,
  sur le che -- min qui mè -- ne droi -- te -- ment
  à la mai -- son du Père.
  A -- men.
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
