%Compilation:lilypond LeChefDeTroupeADit.ly
%Apercu:evince LeChefDeTroupeADit.pdf
%Esclaves:timidity -ia LeChefDeTroupeADit.midi
\version "2.12.1"
\include "italiano.ly"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4=120
  \time 4/4
  \key re \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do'' {
	la4^Solo la8. la16 la8 si\accent la sol
	fad4 fad fad r
	sol4^Chœur sol8. sol16 sol8 la sol fad
	mi4 mi mi2
	dod'4.\f^Solo dod8 re2
	mi,4\mf mi8 fad sol fad mi re
	mi4. fad8 mi2 \bar "||"
	la4^Chœur la8. la16 la4 re\accent
	la4.( sol8) fad4 r
	sol4 sol8. sol16 sol4 la
	sol4.( fad8) mi4 r
	fad2\mf fad8 mi fad sol
	fad2 mi4 r
	la4\f la8. la16 la4 la
	la2. r4\fermata
	dod4\ff dod8. dod16 dod4 dod
	re2. r4 \bar "|."
}

Paroles = \lyricmode {
	Le chef de troupe a dit aux grands Li -- ons,
	\italique Le chef de troupe a dit aux grands Li -- ons,
	\roman «_Mes gar -- çons_!
	Ras -- sem -- ble -- ment_! À l'ins -- tant nous par -- tons._»
	
	Prends ton bâ -- ton, Gré -- goi -- re,
	Prends ta gour -- de pour boi -- re,
	Prends ton pain et trois poi -- res,
	Et nous voi -- là par -- tis
	Pour le jour et la nuit_!
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
