%Compilation:lilypond LaBerceuseDuCampQuiChante.ly
%Apercu:evince LaBerceuseDuCampQuiChante.pdf
%Esclaves:timidity -ia LaBerceuseDuCampQuiChante.midi
\version "2.12.1"
\include "italiano.ly"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4=60
  \time 2/4
  \key lab \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do'' {
	do4\pp lab
	do8 lab sib4
	sib16 do reb do sib8 do
	lab4 mib
	do'4 lab
	do8 lab sib4
	sib16 do reb do sib8 do
	lab2
	mib'4\pp do
	reb8 mib reb4
	reb16 mib reb do sib8 mib
	do4 sib
	mib4\< do
	reb8 mib fa4\fermata\!
	reb16\> mib reb do sib8 mib
	lab,2\! \bar "|."
}

Paroles = \lyricmode {
	Au so -- leil cou -- chant
	Bai -- gnant d'or la fo -- rêt bru -- ne,
	Au so -- leil cou -- chant,
	Qu'il est jo -- li, no -- tre camp_!
	Les ten -- tes en rond
	S'il -- lu -- mi -- nent une à u -- ne,
	Les ten -- tes en rond
	En -- tou -- rent le Pa -- vil -- lon_!
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
