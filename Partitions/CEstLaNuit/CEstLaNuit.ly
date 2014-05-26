\version "2.16"
\include "italiano.ly"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 2=60
  \time 4/4
  \key sol \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
  re2. sol4^\markup {\italic {Lent et religieux} }
  si2~ si4 r
  re,2. sol4
  si2~ si4 r
  re,2.\< sol4
  si2\! re,4 sol
  si2 re,4 sol
  si2 si4 r
  sol2. si4
  re2~ re4 r
  si2. sol4^\markup {\italic rit.}
  re2. r4
  re2.\> re4
  sol1~
  sol\! \bar "|."
}

Paroles = \lyricmode {
  C'est la nuit_!
  Tout se tait,
  Sur les bois, les col -- li -- nes, les plai -- nes,
  C'est la paix.
  Tout est bien et Dieu vient.
}

\score{
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \new Voice = "theme" {
	\override Score.PaperColumn #'keep-inside-line = ##t
	\MetriqueArmure
	\MusiqueTheme
      }
      \new Lyrics \lyricsto theme {
	\Paroles
      }
    >>
\layout{}
\midi{}
}
