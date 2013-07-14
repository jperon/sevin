\version "2.12.1"
\include "italiano.ly"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4.=70
  \time 6/8
  \key lab \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
	\partial 8 mib8
	lab8 mib lab sib do reb
	do4. mib4 reb16 reb
	do8 mib, do' sib mib, sib'
	lab4. r4 mib16 mib
	lab8 mib lab sib do reb
	do4. mib4 do16 do
	do8 lab do sib fa lab
	sib4. r4 \bar "||"
	mib,16 mib mib'4 fa8 mib do sib
	lab4. lab4 lab8
	reb4 do8 sib lab fa
	mib4.~ mib4 mib8
	lab8 mib lab sib mib, sib'
	do8([ lab] do) mib4\fermata mib,8
	fa4 lab8 do mib, do'
	\partial 8*5 lab4.~ lab4 \bar "|."
}

VoixDeux = \relative do' {
	s8*48
	mib16 mib
	mib8[ lab] lab lab do mib,
	lab4 sol8 fa4 mib8
	reb8[ fa] fa fa lab fa
	mib4.~ mib4 mib8
	lab8 mib lab sib mib, sol
	lab4. mib4 mib8
	mib8[ reb] fa mib mib mib
	do4.~ do4 \bar "|."
}

Paroles = \lyricmode {
	Nous somm -- mes la Neu -- viè -- me Lil -- le,
	Aux cou -- leurs de Car -- mel, brun et blanc,
	Qui, tou -- jours gra -- ci -- euse et vi -- ri -- le,
	Dans la vie a -- vance en sou -- ri -- ant.
	\italique La plus chè -- re trou -- pe fran -- çai -- se
	Pour ceux qui sui -- vent ses lois,
	C'est la trou -- pe de Sœur Thé -- rè -- se,
	La trou -- pe des trois Cha -- mois.
}

\score{
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \new Voice = "theme" {
	\autoBeamOff
	\MetriqueArmure
	\voiceOne\MusiqueTheme
      }
      \new Voice = "voix2" {
	\autoBeamOff
	\MetriqueArmure
	\voiceTwo\VoixDeux
      }
      \new Lyrics \lyricsto theme {
	\Paroles
      }                       
    >>
\layout{}
\midi{}
}
