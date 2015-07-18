\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 2=80
  \time 2/4
  \key fa \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
  \partial 8*3 do8^"Solo" re mi
  fa8. \bar "'" fa16^"Chœur" fa8 fa fa \bar "'" la^"Solo" do la
  fa8. \bar "'" fa16^"Chœur" fa8 fa fa \bar "'" la^"Solo" sol fa
  sol8. \bar "'" sol16^"Chœur" sol8 sol sol \bar "'" sol^"Solo" la si
  do8\fermata \bar "'" do8^"Chœur" do do do2 \bar "'"
  \bar "||"
  do2^"Refrain - tous"
  la2 sib!
  do8. fa,16 fa8 fa fa8. la16 sol8 fa
  sol8. do,16 do8 do do8. sol'16 fa8 mi
  fa4 la
  fa8
  \bar "|."
}

Paroles = \lyricmode {
  C’lui qu’est l’plus grand
  \italique
  C’lui qu’est l’plus grand
  \roman
  Chez les p’tits potes,
  \italique
  Chez les p’tits potes,
  \roman
  Ils l’ap -- pellent tous
  \italique
  Ils l’ap -- pellent tous
  \roman
  Le grand pot’ haut_!
  \italique
  Le grand pot’ haut_!

  \roman
  Ah_! Les p’tits potes_!
  Ah_! Les p’tits potes_!
  Ah_! Les p’tits potes_!
  Ah_! Les p’tits potes_!
  Ah_! Les p’tits potes, potes, potes_!
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
