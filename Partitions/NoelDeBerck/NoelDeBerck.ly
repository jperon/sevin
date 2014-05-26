\version "2.16"
\include "italiano.ly"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4=100
  \time 6/8
  \key sol \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

Intro = \relative do'' {
  mi8^"Légèrement" re do si la sol
  fad4. mi4
}

MusiqueTheme = \relative do'' {
  \bar "||"
  sol8\mf
  sol4 sol8 sol4 mi'8
  re4 do8 si4 sol8\p
  la8 si do si4 sol8\pp
  la8 si do si4 sol8
  sol4 sol8 sol4 mi'8
  re4 do8 si4 \breathe re8
  mi8 re do si la sol
  fad4. mi4
  \bar "|."
}

Paroles = \lyricmode {
  J'ai vu trois nefs en -- trer au port,
  Le jour de No -- ël,
  \italique
  Le jour de No -- ël,
  \roman
  J'ai vu trois nefs en -- trer au port,
  \italique
  Le jour de No -- ël de grand ma -- tin.
}

\score{
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      {
        \MetriqueArmure
        \Intro
        \new Voice = "theme" {
          \override Score.PaperColumn #'keep-inside-line = ##t
          \autoBeamOff
          \MusiqueTheme
        }
      }
        \new Lyrics \lyricsto theme {
          \Paroles
        } 
    >>
\layout{}
\midi{}
}
