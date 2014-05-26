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

MusiqueTheme = \relative do'' {
  \partial 2 sol4 sol\<
  sol4 mi'2.(\!
  do1)\>
  r4\! sol sol sol
  si2. la4
  la1
  la4( sol fad) la
  \acciaccatura la8 re4 re2.
  re,2 \acciaccatura si'8 la4. sol8
  sol1\fermata
  r2 sol4 sol
  sol4 mi'2.(
  do1)
  r4 sol sol sol
  si2. la4
  la1
  la4 sol( fad) la
  \acciaccatura la8 re4 re2.
  mi,2 \acciaccatura si'8 la4. sol8
  sol1
  do1\fermata
  re1\fermata
  \bar "|."
}

Paroles = \lyricmode {
  Sa -- lut à toi, ô Nuit, ché -- rie de Dieu,
  Toi qu'il cré -- a pre -- mière aux cieux.
  Nuit de No -- ël qui vis l'En -- fant Jé -- sus,
  Fais_- nous le ché -- rir de plus en plus,
  Ô Nuit_!
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
