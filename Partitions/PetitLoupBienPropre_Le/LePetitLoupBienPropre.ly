\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4=120
  \time 2/4
  \key lab \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do'' {
  do8.^"Solo" sib16 lab8 sib
  do8 do do4
  sib8\ff^"Chœur" sib sib4
  mib8 mib mib4
  do8.^"Solo" sib16 lab8 sib
  do8 do do4
  sib8 do16 reb do8 sib
  lab2 \bar "|."
}

Paroles = \lyricmode {
  Il é -- tait un p'tit Louv' -- teau
  \italique
  (tit Louv' -- teau, tit Louv' -- teau)
  \roman
  Il é -- tait un p'tit Louv' -- teau
  Qui s'ap -- pe -- lait Jean -- not.
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
