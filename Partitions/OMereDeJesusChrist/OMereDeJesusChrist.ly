\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4=90
  \cadenzaOn
  \key do \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
  fa8 mi re mi re do re4 \bar "'"
  fa8 sol fa la fa sol fa fa4 \bar "|"
  fa8 mi re mi re do re4 \bar "'"
  la8 re re^"rall." fa mi do re4 \bar "||"
  re8 mi[( re]) do4 re \bar "|."
}

Paroles = \lyricmode {
  Ô Mè -- re de Jé -- sus_- Christ,
  Lais -- sez là vo -- tre di -- vin Fils
  Et dai -- gnez tour -- ner vers nous
  Vos re -- gards qui sont si doux.
  Ain -- si soit_- il.
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
