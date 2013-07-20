%Compilation:lilypond AuCheminBlanc.ly
%Apercu:evince AuCheminBlanc.pdf
%Esclaves:timidity -ia AuCheminBlanc.midi
\version "2.12.1"
\include "italiano.ly"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4=110
  \time 4/4
  \key lab \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
	\partial 4 do8. reb16
	mib4 mib4~ mib8 mib fa8. sol16
	lab4 do2 do8. sib16
	lab4 fa2\marcato lab4
	mib2~ mib8 r do8. reb16
	mib4 mib4~ mib8 mib fa8. sol16
	lab4 do2 do8. do16
	sib4 fa sol lab
	sib2~ sib4 r \bar "||"
	mib,4 mib2 fa8. sol16
	lab4 do2 do4
	reb4 lab2\marcato sib4
	do2~ do8 r lab8. sib16
	do4 do do8.[ lab16] sib8. lab16
	fa2 mib8 r lab8. sib16
	do4 lab2\marcato sib4
	lab2~ lab4 \bar "|."
}

Paroles = \lyricmode {
	Au che -- min blanc le so -- leil ta -- pe,
	Les dé -- tours sont sans fin_;
	Mais nous i -- rons jus -- qu'à l'é -- ta -- pe,
	Sou -- ri -- ant au blanc che -- min.
	\italique Mar -- chons à la scou -- te,
	Au bout des sen -- tiers c'est la Rou -- te, vi -- ve la Rou -- te,
	La Route et les Rou -- tiers.
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
