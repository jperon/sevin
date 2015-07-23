\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4=100
  \time 12/8
  \key do \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do'' {
  sol4 si8 la re do si la sol la4 re,8 | sol4
  si8 la re do si la si sol4.^"Fin"
  \bar "||"
  sol4 si8 la re do si la sol la4 re,8 | sol4
  si8 la re do si la si sol4. |
  si8 si si si4 re8 re do re si4 la8 |
  re8 do re si4 la8 re do si la4. |
  si8 si si si4 re8 re do re si4 la8 |
  re8 do re si4 la8 re do si la4.^"D.C."
  \bar "|."
}

Paroles = \lyricmode {
  Ac -- cou -- rez, pre -- nez place au ro -- cher, Vieux_- Loups,
  Bien -- tôt le Con -- seil va s’ou -- vrir_;
  Et, du bois qui le te -- nait ca -- ché, pour vous
  Bien -- tôt le feu clair va jail -- lir.
  Vous qui sa -- vez les chan -- sons de chas -- se,
  Vieil -- les lé -- gen -- des et maî -- tres_- mots,
  Ve -- nez, ve -- nez, pre -- nez vo -- tre pla -- ce
  Par -- mi la ban -- de des lou -- ve -- teaux.
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
