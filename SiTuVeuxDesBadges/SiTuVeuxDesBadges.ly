%Compilation:lilypond SiTuVeuxDesBadges.ly
%Apercu:evince SiTuVeuxDesBadges.pdf
%Esclaves:timidity -ia SiTuVeuxDesBadges.midi
\version "2.12.1"
\include "italiano.ly"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4.=90
  \time 6/8
  \key sol \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do'' {
	\partial 8 sib8
	sib4 do8 sib4 la8
	sol4. sol8 r sol
	re'4 re8 mi4 mi8
	re4.~ re8 r sib8
	sib4 do8 sib4 la8
	sol4. sol8 r sol
	re'4 re8 mi4 mi8
	re4.~ re8 r re8
	mi4 mi8 mi4 sib8
	do4. do8 r do
	re4 re8 re4 la8
	sib4. sib8 r r
	sol4.^Chœur la8 sib do
	sib4. re4 r8
	la4 do8 sib4 la8
	sol4 mi8 re4 r8
	sol4. la8 sib do
	sib4. re4 r8
	la4 do8 sib4 la8
	\partial 8*5 sol4.~ sol4 \bar "|."
}

Paroles = \lyricmode {
	La Badge est un in -- si -- gne
	Qui montre à tout ve -- nant
	Que l'por -- teur en sa li -- gne
	Est un scout é -- pa -- tant
	Et qu'il est PRÊT à fai -- re
	Son mé -- tier pour vous plai -- re
	\italique Si tu veux des bad -- ges
	C'n'est pas pour t'en cha -- mar -- rer_;
	Si tu veux des bad -- ges,
	Faut les pré -- pa -- rer_!
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
