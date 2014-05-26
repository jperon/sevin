\version "2.16"
\include "italiano.ly"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4.=70
  \time 3/8
  \key la \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do'' {
  dod8\p la si
  dod4 dod8
  mi8[( re]) dod
  dod8 si r
  dod8 la si
  dod4 dod8
  mi8[( re]) dod
  dod8 si r
  mi,16[( si']) si8 si
  si4 dod16[( si])
  la4 si8
  dod4 re16[( si])^\markup {\italic rall.}
  la8 mi r
  mi16[( si']) si8 si
  si4 dod16[( si])
  la4 si8
  dod4 \times 2/3 {mi16[( re si])}
  la4 r8 \bar "|."
}

Paroles = \lyricmode {
  Com -- me du feu jail -- lit la flam -- me,
  Nos chants s'é -- lè -- vent de notre â -- me,
  N'ê -- tes vous pas des Pe -- tits Loups
  La Da -- me_?
  Dai -- gnez tour -- ner vos yeux très doux
  Vers nous.
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
