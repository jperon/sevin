\version "2.16"
\include "italiano.ly"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4=80
  \time 4/4
  \key sib \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
  \partial 8 fa8
  sol4. sol8 la la sol fa
  sol4. \breathe la8 sib4. \breathe do8
  sib8 la sol4. fa8 sol la
  sol2 r8 la sib do
  do4.-- re8 do sib do4--
  sib8 la fa4 mib8\> fa sol sib\!
  la2\fermata sib8\< do do re\!
  re4 do8 sib la4 sol~
  sol8 la sib sol
  fa4. mib8
  fa8[( sol])\< \times 2/3 {fa8[\> mib re]\!} re2\fermata
  \bar "|."
}

Paroles = \lyricmode {
  Mon Dieu, voi -- ci ma li -- ber -- té,
  Mé -- moire, in -- tel -- li -- gence et vo -- lon -- té,
  Tout est à vous, je vous rends tout_:
  Fai -- tes_- en ce qu'il vous plai -- ra,
  Et que mon u -- ni -- que ri -- ches -- se
  soit vo -- tre grâce et votre a -- mour_!
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
