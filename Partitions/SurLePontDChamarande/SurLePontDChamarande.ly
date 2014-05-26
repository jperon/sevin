\version "2.16"
\include "italiano.ly"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4=120
  \time 2/4
  \key sol \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do'' {
  r4\segno sol8^"Refrain" sol
  sol4 la8 la
  la4 si8 do
  re8 sol, fad sol
  la8 re, sol sol
  sol4 la8 la
  la4 si8 do
  re8 sol, la fad
  sol4 r
  sol8^"Couplet" sol16 sol sol8 sol
  la4\fermata sol8 r
  sol8 sol16 sol sol4
  la4\fermata sol8 r\segno \bar "|."
}

Paroles = \lyricmode {
  \italique
  Sur le pont d'Cha -- ma -- rande,
  l'on y dan -- se, l'on y dan -- se,
  Sur le pont d'Cha -- ma -- rande,
  L'on y dan -- se tous en rond.
  
  \roman
  Les Pe -- tits Loups font comm' ça
  et puis en -- cor comm' ça.
}

\score{
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \new Voice = "theme" {
	\override Score.PaperColumn #'keep-inside-line = ##t
	\autoBeamOff
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
