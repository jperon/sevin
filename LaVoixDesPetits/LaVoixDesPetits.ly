\version "2.12.1"
\include "italiano.ly"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 2=60
  \time 4/4
  \key do \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

MusiqueTheme = \relative do' {
	fa4.^Solo sol8 la4 fa
	re4 fa do2
	do'4. re8 do4 la
	la4 sol sol2
	fa8 fa4 sol8 la4 fa
	re4 fa do2
	do'4. re8 do4 la
	\acciaccatura la8 sol4. fa8 fa2\fermata \bar "||"
	
	la4^Chœur do do do
	la4 do do2
	fa4. mi8 \acciaccatura mi8 re4( do)
	re8( do) sib la sol4\fermata sol
	la4 la sol fa
	re8 fa4. do2
	re'4. re8 do4 la
	\acciaccatura la8 sol4. fa8 fa2\fermata \bar "|."
}

Paroles = \lyricmode {
	É -- cou -- tez l'ap -- pel loin -- tain
	Qui s'é -- tend sous le ciel d'or,
	De -- puis la mer aux flots d'é -- tain
	Jus -- qu'aux tours du châ -- teau fort.
	
	\italique C'est l'ap -- pel doux et puis -- sant
	de la jeu -- nes -- se de Fran -- ce,
	C'est l'ap -- pel doux et puis -- sant
	D'un mil -- lion d'a -- do -- les -- cents.
}

\score{
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \new Voice = "theme" {
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
