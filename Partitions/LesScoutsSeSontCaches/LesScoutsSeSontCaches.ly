\version "2.12.1"
\language "français"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4.=120
  \time 6/8
  \key mib \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do'' {
	\partial 8 sib8
	mib2.~
	mib4 mib8 re4 re8
	sib4 sib8 do4 do8
	sol4. sol~
	sol4 sol8 fa4 mib8
	mib2.~
	mib4 sol8 fa4 mib8
	mib2.~
	mib4 r8 r4 sib'8
	mib2.~
	mib4 mib8 re4 re8
	sib4 sib8 do4 do8
	sol4. sol~
	sol4 sol8 fa4 mib8
	mib2.~
	mib4 sol8 fa4 mib8
	mib2.~
	mib8 r4 r sol8
	sol2.~
	sol4 sol8 la4 la8
	sol4 sol8 la4 la8
	sol4. sol~
	sol4 re8 re4 re8
	re2.~
	re4 re8 re4 re8
	re2.~
	re8 r4 r sib'8
	sib2.~
	sib4 sib8 do4 do8
	sib4 sib8 do4 do8
	sib4. sib~
	sib4 fa8 fa4 fa8
	fa2.~
	fa4 fa8 fa4 fa8
	fa2.~
	fa2. \bar "||" \break
	
	re'4.^Chœur do8 r4
	re4. do8 r4
	mib4 re8 do4 mib8
	re2.
	re4. do8 r4
	re4. do8 r4
	mib4( re8) do4 mib8
	sib8 r sol sol4 sol8
	sol4 sol8 sol4 sol8
	sol4 sol8 sol4 sol8
	sol4 sol8 sol4 sol8
	mib'2.
	fa4 mib8 do4 mib8
	sib8 r sol sol4 lab8
	sib4 lab8 sol4 fa8
	mib2. \bar "|."
}

Paroles = \lyricmode {
	Les scouts se sont ca -- chés dans l'her -- be hau -- te,
	Re -- nards sub -- tils, Re -- nards sub -- tils.
	Ils vont pour le Ral -- ly gra -- vir la cô -- te,
	Où donc sont- ils_? Où donc sont- ils_?
	Sou -- dain, voi -- là qu'ils sor -- tent de sous ter -- re,
	Au même ins -- tant, Au même ins -- tant.
	C'est eux_: leur cercle im -- men -- se se res -- ser -- re,
	Tout en chan -- tant, Tout en chan -- tant_:
	
	\italique Har -- di_! les gars_! Grim -- pons jus -- que- là,
	Un scout par- ci, deux scouts par- là_!
	Trois scouts par- ci, qua -- tre par- là_:
	Ce sont les vrais scouts, les Scouts de Fran -- ce qui sont là,
	Les Scouts de Fran -- ce qui sont là_!
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
