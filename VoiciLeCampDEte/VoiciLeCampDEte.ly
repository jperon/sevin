%Compilation:lilypond VoiciLeCampDEte.ly
%Apercu:evince VoiciLeCampDEte.pdf
%Esclaves:timidity -ia VoiciLeCampDEte.midi
\version "2.12.1"
\include "italiano.ly"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
\tempo 4.=80
  \time 6/8
  \key sol \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do'' {
	si8 sol la si4 re8
	la2.
	si8 sol la si4 re8
	la4.~ la4 re8
	re4. mi8 do mi
	re4. si4 re8
	do4. re8 si sol
	la4.~ la4 re,8\p
	si'4. la8 si la
	sol2. \bar "|."
}

MusiqueAccompagnement = \relative do'' {
	si8 sol fad sol4 sol8
	fad2.
	si8 sol fad sol4 sol8
	fad4.~ fad4 si8
	si4. do8 la do
	si4. sol4 si8
	la4. si8 sol mi
	fad4.~ fad4 re8
	re4. do8 re do
	si2. \bar "|."
}

Paroles = \lyricmode {
	Voi -- ci le camp d'é -- té,
	Par -- tons pour la cam -- pagne,
	La mer et la mon -- ta -- gne
	Ont tou -- te leur beau -- té_;
	Voi -- ci le camp d'é -- té.
}

\score{
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \new Voice = "theme" {
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
