\version "2.12.1"
\include "italiano.ly"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4.=60
  \time 6/8
  \key mib \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

MusiqueTheme = \relative do'' {
	\partial 8 mib,8
	lab8 mib do mib lab sib
	do4. lab4 r8
	do8 lab do sib\fermata r mib,
	lab8 mib do mib lab sib
	mib4. do8 r4
	do8 sib lab sib4 r8 \bar "||"
	do8^Chœur do do do4.
	do8 lab do mib4.(
	do8 sib4)\fermata  mib,8 lab do
	mib4. r4 do8
	lab4.-- sib--
	\partial 8*5 lab4.-- r4 \bar "|."
}

Paroles = \lyricmode {
	Au creux d'un ro -- cher qui do -- mi -- ne
	Les ge -- nêts d'or,
	Il naît au pa -- ys de l'her -- mi -- ne,
	Fau -- con d'Ar -- mor.
	
	\italique
	Fau -- con d'Ar -- mor,
	Roi des fau -- cons,
	Plus haut en -- cor_!
	Nous te sui -- vrons.
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
