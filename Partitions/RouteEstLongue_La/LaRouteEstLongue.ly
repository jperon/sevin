\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4=100
  \time 2/4
  \key do \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
  re4 re8^"Refrain" re8 | la'4 la | sol4 sol | la4 la8 \breathe
  la8 | sol8 sol4 la8 | sol4 mi8 sol | la2~ | la4 r
  re,4 re8 re8 | la'4 la | sol4 sol | la4 la8 \breathe
  la8 | sol8 sol4 la8 | sol4 mi8 sol | la2~ | la4 r
  \bar "||"

  la4^"Couplet" la8 la | re4 re la la | do4 do8 \breathe
  la8 | sol4 sol8 la | sol4 mi8 sol | la2~ | la4 r
  la4 la8 la | re4 re la la | do4 do8 \breathe
  la8 | sol4 sol8 la | sol4 mi8 sol | la2~ | la4 r
  \bar "|."
}

Paroles = \lyricmode {
  La route est lon -- gue, lon -- gue, lon -- gue,
  Mar -- che sans ja -- mais t’ar -- rê -- ter_;
  La route est du -- re, du -- re, du -- re,
  Chan -- te si tu es fa -- ti -- gué.

  \set stanza = "1." Tu mar -- che -- ras des heures en -- tiè -- res
  Sous le dur so -- leil de l’é -- té,
  Tu mar -- che -- ras dans la pous -- siè -- re
  Que sou -- lè -- ve -- ront tes sou -- liers.
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
