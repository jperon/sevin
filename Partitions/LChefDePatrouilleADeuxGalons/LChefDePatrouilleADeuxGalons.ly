%Compilation:lilypond LChefDePatrouilleADeuxGalons.ly
%Apercu:evince LChefDePatrouilleADeuxGalons.pdf
%Esclaves:timidity -ia LChefDePatrouilleADeuxGalons.midi
\version "2.12.1"
\include "italiano.ly"

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

MusiqueTheme = \relative do' {
	\partial 8*3 re8^Solo mi fad
	sol4 sol8 sol4 si8
	sol4. la8 la la
	la4 sol8 fad4 mi8
	re4 r8 re8^Chœur mi fad
	sol4 sol8 sol4 si8
	sol4. la8 la la
	la4 sol8 fad4 mi8
	re4 r8 la'^Solo la la
	la4 si8 do4 re8
	si4 r8 la la la
	la4 si8 do4 re8
	si4 r8 sol4.
	sol4. sol8 fad mi
	re4. sol8 fad sol
	la4 la8 mi4 fad8
	sol4 r8 sol4.^Chœur
	sol4. sol8 fad mi
	re4. sol8 fad sol
	la4 la8 mi4 fad8
	\partial 8*3 sol4 r8 \bar "|."
}

Paroles = \lyricmode {
	L'chef de pa -- trouille a deux ga -- lons,
	Et des in -- signes jus -- qu'aux ta -- lons,
	\italique L'chef de pa -- trouille a deux ga -- lons,
	Et des in -- signes jus -- qu'aux ta -- lons,
	\roman Des ma -- ca -- rons plein les deux bras,
	On ne sait pas ceux qu'il n'a pas.
	Ah_! Ah_! Ah_! Oui, vrai -- ment,
	L'chef de pa -- trouille est é -- pa -- tant_!
	\italique Ah_! Ah_! Ah_! Oui, vrai -- ment,
	L'chef de pa -- trouille est é -- pa -- tant_!
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
