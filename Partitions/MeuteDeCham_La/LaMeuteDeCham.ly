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

MusiqueCouplet = \relative do' {
	\partial 8 mib8
	lab8 mib lab sib do reb
	do4. mib4 reb16 reb
	do8 mib, do' sib mib, sib'
	lab4. r4 mib16 mib
	lab8 mib lab sib do reb
	do4. mib4 do16 do
	do8 lab do sib fa lab
	sib4. r4 \bar "||"
}

MusiqueRefrain = \relative do' {
	mib16 mib mib'4 fa8 mib do sib
	lab4. lab4 lab8
	reb4 do8 sib[ lab] fa
	mib4.~ mib4 mib8
	lab8 mib lab sib mib, sib'
	do8([ lab] do) mib4\fermata mib,8
	fa4 lab8 do mib, do'
	\partial 8*5 lab4.~ lab4 \bar "|."
}

VoixDeux = \relative do' {
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
	Sur -- gis de tous les coins de Fran -- ce,
	Les Vieux Loups, de -- ve -- nus Pe -- tits Loups,
	Sont fon -- dus en u -- ne Meute im -- men -- se,
	Blancs et Gris, Fau -- ves, Noirs, Bruns et Roux.

	\italique Bien plus doux que rose ou la -- van -- de
	S'é -- pand sur la fo -- rêt
	Le cher par -- fum de Cha -- ma -- ran -- de
	Qu'en nous il reste à ja -- mais_!
}

\score{
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \MetriqueArmure
      \new Voice = "theme" {
        \autoBeamOff
        \MusiqueCouplet
        <<
          {\voiceOne \MusiqueRefrain}
          \new Voice {\autoBeamOff \voiceTwo \VoixDeux}
        >>
      }
      \new Lyrics \lyricsto theme {
        \Paroles
      }
    >>
\layout{}
\midi{}
}
