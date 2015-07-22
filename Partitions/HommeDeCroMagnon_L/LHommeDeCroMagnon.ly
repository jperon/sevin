\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4.=120
  \time 6/8
  \key fa \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
  r4. do8 re mi
  fa4 la8 sol4 la8
  fa4 r8 la la la
  do4 la8 sol4 fa8
  sol4 r8 re re re
  sol4 sib8 la4 sib8
  sol4 r8 do do do
  do4 sib8 la4 sol8
  la4 r8 do,8 re mi
  fa4 la8 sol4 la8
  fa4 r8 la la la
  do4 la8 sol4 fa8
  sol4 r8 re4 re8
  sib'4 sib8 sib la sol
  la4 r8 do4 do8
  la4 la8 sol fa sol
  fa2.
  \bar "||"
  r4. do'8^"Refrain" do do
  do2.~
  do4. la8 la la
  la2.~
  la4. fa8 fa fa
  fa2.~
  fa2.
  sol8 sol sol fa4 sol8
  la4 do8 do4 r8
  sib8 sib sib sib la sol
  la8 la la la sol fa
  sol8 sol sol sol fa mi
  fa4 la8 do4 r8
  sib8 sib sib sib la sol
  la8 la la la sol fa
  sol8 sol sol sol fa mi
  fa4. mi
  re4. do
  fa4. mi
  re4. do
  \bar "|."
}

Paroles = \lyricmode {
  C’é -- tait au temps d’la pré -- his -- toire,
  Il y_a deux ou trois cent mille ans_:
  Vint au monde un ê -- tre bi -- zarre
  Pro -- che pa -- rent d’l’o -- rang_- ou -- tang.
  De -- bout sur ses pattes de der -- rière,
  Vê -- tu d’un slip en peau d’bi -- son,
  Il al -- lait con -- qué -- rir la Terre_:
  C’é -- tait l’hom -- me de Cro_- Ma -- gnon_!
  L’hom -- me de Cro…
  L’hom -- me de Ma…
  L’hom -- me de Gnon…
  L’hom -- me de Cro_- Ma -- gnon_! pon -- pon_!
  L’hom -- me de Cro, de Ma -- gnon,
  Ce n’est pas du bi -- don,
  L’hom -- me de Cro_- Ma -- gnon, pon -- pon_!
  L’hom -- me de Cro, de Ma -- gnon
  Ce n’est pas du bi -- don
  L’hom -- me de Cro_- Ma -- gnon_!
  pon, pon, pon,
  pon, pon, pon, pon.
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
