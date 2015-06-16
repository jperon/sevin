%Compilation:lilypond AhQuIlFaitBonSurLaMontagne.ly
%Apercu:evince AhQuIlFaitBonSurLaMontagne.pdf
%Esclaves:timidity -ia AhQuIlFaitBonSurLaMontagne.midi
\version "2.12.1"
\language "français"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 2=50
  \time 4/4
  \key do \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
	mi2 mi4 sol
	sol2. r4
	la2 la4 do
	do2 sol8 r do4
	do4 la la do
	sol2~ sol8 r mi4
	sol4 fa fa sol
	mi2~ mi8 r mi4
	mi4 la la la
	la2~ la8 r re,4
	fa4 re re mi
	do2. r4\bar "||"
	si2 si4 re
	re2. r4
	mi2 mi4 sol
	sol2 re8 r sol4
	sol4 mi mi sol
	re2~ re8 r si4
	re4 do do re
	si2~ si8 r si4
	si4 mi mi mi
	mi2~ mi8 r la,4
	do4 la la si
	sol2. r4 \bar "||"
	mi'2 re4 do
	sol'2. r4
	mi2 re4 do
	sol'2 sol8 r sol4
	sol4 mi fa re
	do2~ do8 r do'4
	do4 la sib sol
	fa2~ fa8 r8 r4 \bar "||"
	sol2 la4 mi
	sol2. r4
	sol2 la4 mi
	sol4.( fa8) mi r mi4
	fa4 sol la si
	sol4 do do, fa
	mi2 re
	do2. r4 \bar "|."
}

Paroles = \lyricmode {
	Ah_! qu'il fait bon sur la mon -- ta -- gne
	D'al -- ler dres -- ser sa tente au fond des bois é -- pais.
	D'al -- ler dres -- ser sa tente au fond des bois é -- pais.
	
	Ah_! qu'il fait bon sur la mon -- ta -- gne
	De voir le feu s'é -- teindre et de rê -- ver en paix.
	De voir le feu s'é -- teindre et de rê -- ver en paix.
	
	Ah_! qu'il fait bon sur la mon -- ta -- gne
	De dres -- ser un au -- tel et d'y pri -- er en paix.
	
	Ah_! qu'il fait bon sur la mon -- ta -- gne
	De ne voir que Dieu seul et de l'ai -- mer en paix.
}

\score{
    \new Staff <<
      \set Staff.midiInstrument = "pan flute"
      \new Voice = "theme" \transpose do re {
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
