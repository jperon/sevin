%Compilation:lilypond JAiUnPtitBAAFaire.ly
%Apercu:evince JAiUnPtitBAAFaire.pdf
%Esclaves:timidity -ia JAiUnPtitBAAFaire.midi
\version "2.12.1"
\include "italiano.ly"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4=110
  \time 2/4
  \key do \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do'' {
	si8.^"Le Chef" la16 sol8 sol
	la8 si sol sol
	si8. la16 sol8 sol
	la8 si sol4
	si8 si si si
	si8 si si si
	re8. do16 si8 si
	la8 sol la4\fermata \bar "|."
	si8.^Tous la16 sol8 sol
	la8. si16 sol8 sol
	si8.^Tous la16 sol8 sol
	la8 si sol4\fermata \bar "|."
}

Paroles = \lyricmode {
	J'ai un' p'tit' B A à fai -- re,
	Je ne sais qui la fe -- ra_:
	Si j'la donne à un' pa -- trouil -- le,
	À l'autre el -- le la pass' -- ra_!
	\italique Oh_! non, non, chef_! ma pa -- trouil -- le,
	Ma pa -- trouil -- le la fe -- ra_!
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
