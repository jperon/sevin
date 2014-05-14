\version "2.16"
\include "italiano.ly"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4=60
  \time 2/4
  \key sol \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueCouplet = \relative do' {
  \partial 8 r8
  R2*7
  r4 r8 re\mf
  sol8. sol16 sol8 si
  la8. sol16 la8 si
  sol8. sol16 si8 re
  mi4. mi8
  \acciaccatura mi8 re8. si16 si8 sol
  la8. sol16 la8 si
  sol8. mi16 mi8 re
  sol4. \bar "||"
}

MusiqueRefrain = \relative do'' {
  mi8^"Refrain"
  re8 si si sol
  la8. sol16 la8 si
  re8.\< si16 si8 re\!
  mi4. <mi sol>8
  re8. si16 si8 sol
  la8. sol16 la8 si
  sol8. mi16 mi8 re
  sol4. \bar "|."
}

Paroles = \lyricmode {
  
}

\score{
  <<
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \new Voice = "theme" {
        \override Score.PaperColumn #'keep-inside-line = ##t
        \MetriqueArmure
        \MusiqueCouplet
        \MusiqueRefrain
      }
    >>
    \new Lyrics \lyricsto theme {
      \Paroles
    }
  >>
  \layout{}
  \midi{}
}
