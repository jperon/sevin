%Compilation:lilypond AuCampDeChamarande.ly
%Apercu:evince AuCampDeChamarande.pdf
%Esclaves:timidity -ia AuCampDeChamarande.midi
\version "2.12.1"
\include "italiano.ly"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4=90
  \time 2/4
  \key lab \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do'' {
	lab4 lab8 do
	do8 sib do lab
	lab4 lab8 do
	do8 sib do4
	do4 do8 sib
	lab8^"rall." do mib do
	mib4 fa8 mib
	do8 lab sib4 \bar "||"
	mib,4^Refrain lab8 do
	do8 sib16 lab do8 lab
	do4 do8 sib16 lab
	do8 sib lab4 \bar "|."
}

Paroles = \lyricmode {
	Au camp de Cha -- ma -- ran -- de
	Me suis fait é -- co -- lier.
	Y trou -- vai paix si gran -- de
	Que n'ai pu m'en al -- ler_!
	
	\italique Ô Cha -- ma -- ran -- de que j'ai -- me,
	Ja -- mais je ne t'ou -- blie -- rai_!
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
