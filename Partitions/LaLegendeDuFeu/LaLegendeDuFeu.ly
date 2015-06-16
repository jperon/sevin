%Compilation:lilypond LaLegendeDuFeu.ly
%Apercu:evince LaLegendeDuFeu.pdf
%Esclaves:timidity -ia LaLegendeDuFeu.midi
\version "2.12.1"
\language "français"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4=120
  \time 2/4
  \key do \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do'' {
	r4 sol8\mf sol
	sol4 la8 si
	do8 sol mi do
	re4 mi
	do4 sol'8 sol
	sol4 la8 si
	do8 sol mi do
	re4 mi
	do4 re8\p^Refrain re
	re4 \acciaccatura{mi16[ re]} do8 re
	mi8^\markup{\italic "mystérieux et très doux"} do sol'\pp la
	sol8 r16 sol sol8 la
	sol4 do,8\mf do
	re8 re \acciaccatura{mi16[ re]} do8 re
	mi8 do sol' la
	sol8.\> sol16 sol8 la^\markup{\italic doux}
	sol4\! do8\f do
	do8 do do do
	mi2~
	mi4 la,8^\markup{\italic Gaiement} lab
	sol8 r16 do do8 si
	do4 r \bar "|."
}

Paroles = \lyricmode {
	Les Scouts met -- tent la flam -- me
	Aux bois ré -- si -- neux,
	É -- cou -- tez chan -- ter l'â -- me
	Qui pal -- pite en eux.
	Mon -- te, flam -- me lé -- gè -- re,
	Feu de camp, si chaud, si bon_!
	Dans la plaine ou la clai -- riè -- re,
	Monte en -- core et mon -- te donc,
	monte en -- core et mon -- te donc_!
	Feu de camp si chaud, si bon_!
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
