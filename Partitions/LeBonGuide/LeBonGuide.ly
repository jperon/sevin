\version "2.16"
\include "italiano.ly"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4.=60
  \time 6/8
  \key re \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
  fad4 fad8 fad mi fad
  la4( si8) la4 r8
  re,4 re8 re dod re
  mi4.~ mi8 r4
  mi4 fad8 fad mi fad
  la4( si8) la4 r8
  re4 dod8 si dod si
  la4.\fermata \bar "||"
  <<
    { la4^"Chœur" fad8
      la4 fad8 la si la
      sol4. sol4 mi8
      sol4 mi8 sol la sol
      fad4. \breathe re'4 dod8
      si4 la8 la sol mi
    }
    { fad4 re8
      fad4 re8 fad sol fad
      mi4. mi4 dod8
      mi4 dod8 mi fad mi
      re4. fad4 la8
      sol4 fad8 dod mi dod
    }
  >>
  re4.~ re8 r4 \bar "|."
}

Paroles = \lyricmode {
  Toi par qui fut nour -- ri -- e
  L'en -- fan -- ce du Sau -- veur,
  Ô gar -- dien de Ma -- ri -- e,
  Gui -- de tes É -- clai -- reurs_!
  
  \italique
  Gui -- de, gui -- de tes É -- clai -- reurs,
  Gui -- de, gui -- de tes É -- clai -- reurs,
  Gui -- de, gui -- de tes É -- clai -- reurs_!
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
