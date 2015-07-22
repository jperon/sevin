\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4=120
  \time 2/4
  \key do \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
  \partial 4
  \repeat volta 2 {
    mi8 fa | \time 3/4 sol4 mi' re8 re | \time 2/4 do8 do
    mi,8 fa | \time 3/4 sol4 mi' re8 re | \time 2/4 do4
  }
  fa8 mi | re8 do re mi | re8 do
  fa8 mi | re8 do si la | sol4

  \repeat volta 2 {
    mi8.^"Refrain" fa16 | sol8 do si re | do8 do
    mi,8. fa16 | sol8 do si re | do4
  }
}

Paroles = \lyricmode {
  J’ai une a -- mie dans le mon -- de,
  Mais elle est bien loin hé -- las_!
  J’ai quel -- que chose à lui di -- re,
  Oui, mais qui le lui di -- ra_?

  La vio -- let -- te dou -- ble, dou -- ble,
  La vio -- let -- te dou -- ble -- ra.
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
}

\score{\transpose mi si,
  <<
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \new Voice = "theme" {
        \override Score.PaperColumn #'keep-inside-line = ##t
        \MetriqueArmure
        \unfoldRepeats \MusiqueTheme
      }
    >>
    \new Lyrics \lyricsto theme {
      \Paroles
    }
  >>
  \midi{}
}
