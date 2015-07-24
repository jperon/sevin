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

MusiqueTheme = \relative do'' {
  r8 sol do si sol la | la4. sol8 mi fa | sol4 sol
  r8 sol | do2 si8 la | si2 la8 sol | la4.
  r8 la4 | re4. do8 si la | do8 si sol4 sol |
  r8 la si do si la | mi2~ mi8 r | fa4 mi re | do2.
  \bar "|."
}

Paroles = \lyricmode {
  A -- vant d’al -- ler dor -- mir sous les é -- toi -- les,
  Doux Maître, hum -- ble -- ment à ge -- noux,
  Tes fils t’ou -- vrent leur cœur sans voi -- les,
  Si nous a -- vons pé -- ché, par -- don -- ne_- nous.
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
