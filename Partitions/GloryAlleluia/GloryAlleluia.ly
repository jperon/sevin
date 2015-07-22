\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4=110
  \time 2/4
  \key do \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do'' {
  sol4 sol8 fa | mi8 sol do re | mi8 mi mi re | do4 r
  la4 la8 si | do8 si do la | sol8 la sol mi | sol4 r
  sol4 sol8 fa | mi8 sol do re | mi8 mi mi re | do4
  do8 do | re4 re do si | do4\fermata r
  \bar "||"

  sol4. fa8 | mi8 sol do re | mi2 | do4 r
  la4. si8 | do8 si do la | sol2 | mi4 r
  sol4. fa8 | mi8 sol do re | mi2 | do4
  do8 do | re4 re do si | do2
  \bar "|."
}

Paroles = \lyricmode {
  Nous sommes par -- tis de bon ma -- tin a -- vant le jour,
  Nous sommes par -- tis de bon ma -- tin a -- vant le jour,
  Nous sommes par -- tis de bon ma -- tin a -- vant le jour,
  La nuit é -- tait comme un four.

  \italique
  Glo -- ry, glo -- ry, al -- le -- lu -- ia_!
  Glo -- ry, glo -- ry, al -- le -- lu -- ia_!
  Glo -- ry, glo -- ry, al -- le -- lu -- ia_!
  Bon voy -- age pour tous les gars_!
}

\score{\transpose sol re
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
