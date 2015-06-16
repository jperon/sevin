%Compilation:lilypond Voix_des_Allongés.ly
%Apercu:evince Voix_des_Allongés.pdf
%Esclaves:timidity -ia Voix_des_Allongés.midi
\version "2.12.1"
\language "français"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4.=80
  \time 6/8
  \key lab \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do'' {
	\partial 8 do8
	do4 lab8 sib4 do8
	do4. do8 r do
	do4 lab8 sib4 do8
	do4.~ do8 r do8
	do4 lab8 sib4 do8
	do4. do8 r do
	do4 lab8 sib4 do8
	do4.~ do8 r fa,
	do'4 do8 do4 reb8
	sib4. sib4 sib8
	do4 sib8 lab4 sol8
	fa4 sol8 lab4 fa8
	sib4. sib4.
	do4 sib8 lab4 sol8
	\partial 8*5 fa4.~ fa8 r \bar "|."
}

Paroles = \lyricmode {
	Au long de nos gout -- tiè -- res
	Qui nous ser -- vent de lits,
	Pri -- son -- niers de mi -- sè -- re,
	Que lon -- gues sont nos nuits_!
	Les ronds de nos veil -- leu -- ses
	Trem -- blo -- tent au pla -- fond,
	Nuits dou -- lou -- reu -- ses,
	Quand donc dor -- mi -- rons_?
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
