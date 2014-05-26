%Compilation:lilypond LesChamois.ly
%Apercu:evince LesChamois.pdf
%Esclaves:timidity -ia LesChamois.midi
\version "2.12.1"
\include "italiano.ly"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4=70
  \time 3/8
  \key mib \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do'' {
	\partial 16 sib16
	sib16 sol sol sib sib mib
	mib4 sib8
	sib4 lab16 fa
	mib4 r16 sib'
	sib16 sol sol sib sib\tenuto mib
	mib4 do8
	do8 re8. do16
	sib4 r16 sib
	sib16 sib sib sib do re
	mib4 sib8
	sib8 lab sol
	fa4\fermata r16 mib
	mib16 sol sol sib sib mib
	sol4 mib8
	sib4 lab16 fa
	\partial 16*5 mib4 r16 \bar "|."
}

Paroles = \lyricmode {
	C'est nous, la race aux pieds ra -- pi -- des,
	Com -- me les vents_!
	Nous qui fran -- chis -- sons, in -- tré -- pi -- des
	Les rocs mou -- vants_!
	Dé -- dai -- gnant l'her -- be des cam -- pa -- gnes,
	L'om -- bre des bois,
	Nous som -- mes rois de la mon -- ta -- gne,
	Nous, les Cha -- mois_!
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
