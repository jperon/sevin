%Compilation:lilypond TroisScoutsDeFrance.ly
%Apercu:evince TroisScoutsDeFrance.pdf
%Esclaves:timidity -ia TroisScoutsDeFrance.midi
\version "2.12.1"
\language "français"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4.=110
  \time 6/8
  \key sol \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do'' {
	re4.^Solo si4 la8
	sol4.~ sol8 r re
	sol4 la8 si4 do8
	\time 3/8 si4 la8
	\time 6/8 la4.^Chœur la4 si8
	la4.~ la8 r la
	si4. do8 re mi
	re4 do8^Solo si4 la8
	sol4. sol8 sol sol
	re4.~ re8 r re^Chœur
	sol4 la8 si4 do8
	si4.( la4.)
	sol4. r4. \bar "|."
}

Paroles = \lyricmode {
	Trois Scouts de France
	S'en al -- laient en pa -- trouil -- le,
	\italique Trois Scouts de France
	S'en al -- laient en pa -- trouille,
	\roman Et ri, et ran, ram -- pe -- ta -- plan,
	\italique S'en al -- laient en pa -- trouil -- le.
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
