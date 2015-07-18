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
  \partial 4 do8 do
  fa4 la
  la4 sol
  fa2
  do8 r fa sol
  la4 do
  do4. sib8
  la2
  r4 fa8 sol
  la4 la
  la4 sol
  la4.( sib8)
  do8 r sib la
  sol4 sol
  sol4 fa
  sol4.( la8)
  sib8 r la do
  la4. la8
  sol4. sol8
  la8 r la8 do
  la4. la8
  sol4. sol8
  fa2
  \bar "|."
}

Paroles = \lyricmode {
  Un jour, dans la fu -- sil -- la -- de
  Ga -- lo -- pant à l’in -- con -- nu,
  Nous mar -- chions en ca -- val -- ca -- de_;
  Tu é -- tais mon ca -- ma -- ra -- de,
  Ce -- lui que j’ai -- mais le plus,
  Ce -- lui que j’ai -- mais le plus.
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
