%Compilation:lilypond PercantLesEcharpesDeLAube.ly
%Apercu:evince PercantLesEcharpesDeLAube.pdf
%Esclaves:timidity -ia PercantLesEcharpesDeLAube.midi
\version "2.12.1"
\language "français"

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
	do8 lab do sib[ fa] lab
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
	Per -- çant les é -- char -- pes de l'au -- be,
	Le so -- leil res -- plen -- dit tel -- le -- ment
	Qu'on di -- rait la gran -- de roue à au -- bes
	D'un na -- vi -- re de di -- a -- mant.
	\italique Que ja -- mais no -- tre voix ne tai -- se
	L'a -- mour de tes fils pour toi,
	Pour toi, dou -- ce ter -- re fran -- çai -- se,
	Ter -- re d'hon -- neur et de foi !
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
