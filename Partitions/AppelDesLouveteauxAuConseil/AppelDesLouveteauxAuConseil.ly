\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4.=100
  \time 6/8
  \key fa \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
  \partial 4.
  fa8 fa fa | fa8 do fa la fa la | do4 la8
  fa8 fa fa | fa8 do fa sol la sol | fa4^"Fin" r8
  \bar "||"
  fa8 fa fa | fa8 do fa la fa la | do4 la8
  fa8 fa fa | fa8 do fa sol la sol | fa4 r8
  sol8 sol sol | sol8 fa sol la fa la | sol4 do,8
  sol'8 sol sol | sol8 la sib do sib la | sol4 r8
  sol8 sol sol | sol8 fa sol la fa la | sol4 do,8
  sol'8 sol sol | sol8 la sib do sib la | sol4^"D.C." r8
  \bar "|."
}

Paroles = \lyricmode {
  Ve -- nez sans crainte au -- près de la fleur rou -- ge,
  Ve -- nez_- y tous, lou -- ve -- teaux et lou -- varts.
  Ne crai -- gnez rien de ces om -- bres qui bou -- gent_;
  Ne crai -- gnez pas la flamme et ses ha -- sards_!
  La fleur qui vit de bois sec et de pail -- le
  Est un a -- mi pour le peu -- ple des loups_;
  Quand el -- le brille, il n’est plus de ba -- tail -- le,
  Cha -- cun se sent gé -- né -- reux, calme et doux.
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
