%Compilation:lilypond CEstLeVent.ly
%Apercu:evince CEstLeVent.pdf
%Esclaves:timidity -ia CEstLeVent.midi
\version "2.12.1"
\include "italiano.ly"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4=100
  \time 2/4
  \key do \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
	\partial 4 mi8^Solo sol
	la8 la si8. sol16
	do8 r mi,^Chœur sol
	\repeat volta 2 {
		la la re do16[ si]
		do8 \bar "|."
		sol8\p^\markup{Solo \italic (mystérieux)}\cresc sol sol
		\acciaccatura{si} la8 sol la si
		do4\! \breathe sol8\p sol
		la8 la si8. sol16
		do8 \bar "||"
		sol8\p^\markup{Chœur}\cresc sol sol
		\acciaccatura{si} la8 sol la si
		do4\! \breathe sol8\p sol
		la8 la si8. sol16
		do8 \bar "||"
		sol8\mf^Solo do mi
		sol8 mi re do
		la8 si16\p do re8. do16
		si8. do16 la8. si16
		sol8.\fermata fa16 mi8\pp sol
		la8 la si8. sol16
		do4 \bar "||"
		mi,8\ff^Chœur sol
	}
}

MusiqueAccompagnement = \relative do' {
	do8 mi
	fa fa sol8. fa16
	mi8 r do mi
	fa8 fa fa fa
	mi8 mi re mi
	fa mi fa re
	mi4 mi8 mi
	fa8 fa sol8. fa16
	mi8 mi re mi
	fa8 mi fa re
	mi4 mi8 mi
	fa8 fa sol8. fa16
	mi8 mi mi sol
	sol8 sol fa mi
	fa8 fa fa8. fa16
	sol8. la16 fa8. sol16
	re8. re16 do8 mi
	fa fa sol8. fa16
	mi4 do8 mi
}

Paroles = \lyricmode {
	C'est l'vent, c'est l'vent fri -- vo -- lant,
	\italique C'est l'vent, c'est l'vent fri -- vo -- lant.
	\roman "1. Nous" a -- vons dres -- sé no -- tre camp
	(C'est l'vent, c'est l'vent fri -- vo -- lant)
	\italique Nous a -- vons dres -- sé no -- tre camp
	(C'est l'vent, c'est l'vent fri -- vo -- lant)
	\roman Au bord du bois, près de l'é -- tang,
	C'est le vent qui vo -- le, qui fri -- vo -- le_:
	C'est l'vent, c'est l'vent fri -- vo -- lant.
	\italique C'est l'vent,…
}

\score{
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \new Voice = "theme" {
	\override Score.PaperColumn #'keep-inside-line = ##t
	\autoBeamOff
	\voiceOne
	\MetriqueArmure
	\MusiqueTheme
      }
      \new Voice = "accompagnement" {
	\autoBeamOff
	\voiceTwo
	\MetriqueArmure
	\MusiqueAccompagnement
      }
      \new Lyrics \lyricsto theme {
	\Paroles
      }                       
    >>
\layout{}
\midi{}
}
