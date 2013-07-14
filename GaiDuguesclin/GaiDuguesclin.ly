%Compilation:lilypond .ly
%Apercu:evince .pdf
%Esclaves:timidity -ia .midi
\version "2.12.1"
\include "italiano.ly"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4=100
  \time 6/8
  \key mib \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
	\partial 4 mib8[^Sifflé fa]
	sol8.[ lab16 sol8] fa[ mib fa]
	mib4 sib'8 mib4 \bar "||" sib,8^Solo
	mib8 mib mib sol sol sol
	fa8 mib fa mib4.
	sib'4.~^Chœur sib4 sol8
	do8 sib4~ sib sib8^Solo
	do8 mib do sib lab sol
	lab8 sib lab sol mib^Chœur fa
	sol8. lab16 sol8 fa mib fa
	mib4. mib4^Écho fa8
	sol4. fa8( mib) fa
	mib2.
	sib'4.~^Solo sib4 sol8
	do8 sib4~ sib sib8^Chœur
	do8 mib do sib lab sol
	lab8 sib lab sol mib fa
	sol8. lab16 sol8 fa mib fa
	mib4.~ mib8 \bar "|."
}

MusiqueAccompagnementUn = \relative do'' {
	r8*2 R2. r4. r4 r8 R2.*2
	<sol~ sib~>4. <sol sib>4 sol8
	<lab do>8 <sol~ sib~>4 <sol sib>4 r8
	R2.
	r4 r8 r sol8 <fa lab>8
	<sol sib>8. <lab do>16 <sol sib>8 <fa lab>( <mib sol>) <fa lab>
	sol4. mib4 fa8
	sol4. fa8 mib fa
	mib2.
	<sol~ sib~>4. <sol sib>4 sol8
	<lab do>8 <sol~ sib~>4 <sol sib>4 <sol sib>8
	<do mib>8( <do mib>8) <lab do> <sol sib>( <fa lab>) <mib sol>
	<fa lab>8 <sol sib> <fa lab> sol mib fa
	sol8. lab16 sol8 fa mib fa
	mib4.~ mib8
}

MusiqueAccompagnementDeux = \relative do' {
	r8*2 R2. r4. r4 r8 R2.*2
	mib4.~ mib4~ mib8
	mib8 mib4~ mib4 s8
	R2.
	r4 r8 r mib mib
	sib8. sib16 sib8 sib4 sib8
	mib4. mib4 fa8
	sol4. fa8 mib fa
	mib2.
	mib4.~ mib4~ mib8
	mib8 mib4~ mib mib8
	lab,4 lab8 mib'4 mib8
	sib8 sib sib mib mib fa
	sol8. lab16 sol8 fa mib fa
	mib4.~ mib8
}

Paroles = \lyricmode {
	_ _ _ _ _ _
	Al -- lons, les gar -- çons,
	Ça_! pre -- nons nos bâ -- tons.
	\italique Oui_! Du Gues -- clin_!
	\roman Et par les buis -- sons dis -- per -- sons nos chan -- sons,
	\italique Nous par -- tons pour un ru -- de che -- min,
	Pour un ru -- de che -- min_!
	\roman Gai_! Du Gues -- clin_!
	\italique Le vail -- lant bre -- ton se -- ra no -- tre pa -- tron_:
	Nous par -- tons pour un ru -- de che -- min_!
}

\score{
	\new ChoirStaff{ <<
		\new Staff{ <<
			\set Staff.midiInstrument = "flute"
			\new Voice = "theme" {
				\autoBeamOff
				\MetriqueArmure
				\MusiqueTheme
			}
			\new Lyrics \lyricsto theme {
				\Paroles
			}
		>> }
		\new Staff \with { printPartCombineTexts = ##f } { <<
			%\set Staff.midiInstrument = "flute"
			\new Voice = "accompagnement1" {
				\autoBeamOn
				\voiceOne
				\MetriqueArmure
				\partcombine
					\MusiqueAccompagnementUn
					\MusiqueAccompagnementDeux
			}
			% \new Voice = "accompagnement1" {
				% \autoBeamOn
				% \voiceOne
				% \MetriqueArmure
				% \MusiqueAccompagnementUn
			% }
			% \new Voice = "accompagnement2" {
				% \autoBeamOn
				% \voiceTwo
				% \MetriqueArmure
				% \MusiqueAccompagnementDeux
			% }
		>> }
	>> }
	\layout{}
	\midi{}
}
