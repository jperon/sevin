%Compilation:lilypond CouleursDuSoir.ly
%Apercu:evince CouleursDuSoir.pdf
%Esclaves:timidity -ia CouleursDuSoir.midi
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

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
	re2.^"Lent et religieux" sol4
	si2. r4
	re,2. sol4
	si2. r4
	re,2. sol4
	si2 re,4 sol
	si2 re,4 sol
	si2 si4 r
	sol2. si4
	re2. r4
	si2. sol4
	re2. r4
	re2. re4
	sol1~ sol1 \bar "|."
}

Paroles = \lyricmode {
	Aux cou -- leurs_!
	aux cou -- leurs_!
	Sa -- lu -- ons le dra -- peau de la Fran -- ce,
	Et pri -- ons pour la France aux cou -- leurs_!
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
