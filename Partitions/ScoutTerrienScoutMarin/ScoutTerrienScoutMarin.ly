\version "2.12.1"
\language "français"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 2.=60
  \time 3/4
  \key mib \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
	\partial 4 sib^Terrien
	sol'4 sol sol
	sol4 sol sol
	sol4 sol4. fa8
	mib2 mib4
	sib'2.
	fa2.~
	fa2.~
	fa4 r sib,
	lab'4 lab lab
	lab4 lab lab
	lab4 lab4. sol8
	fa2 do'4
	sol2.
	sib2.~
	sib2 r4
	\partial 2 r2 \bar "|."
	
	\partial 4 sib,4^Marin
	sol'4 sol sol
	sol4 sol sol
	sol4 sol4. fa8
	mib2 sib'4
	do2.
	si2.~
	si4 r sib^Terrien
	sib4 do sib
	sib4 do sib
	sib4 do4. sib8
	sib2 sib4
	la2.(
	do2.)
	sib2.~
	\partial 2 sib4 r \bar "|."
}

RefrainMarin = \relative do' {
	mib2.^Refrain
	fa2.
	re2.~
	re2 r4 \bar "||"
	fa2.^Duo
	mib2.
	sib2.~
	sib4 lab' lab
	sol4 sol sol
	sol4 sol sol
	sol4 sol4. sol8
	sol4 sol4. mib8
	mib2.(
	re2.) \bar "||"
	r2.*4 \bar "||"
	fa2.
	mib2.
	fa2.~
	fa4 sib lab
	lab4 lab4. lab8
	sol4 sol sol
	sol4 sol4. sol8
	lab2.
	R
	r4 lab, sib
	sol2.~
	sol4 r2 \bar "|."
}

RefrainTerrien = \relative do'' {
	r2.*4
	lab2.
	sol2.
	fa2.~
	fa4 sib sib
	sib do re
	mib4 re do
	sib4 do4. sol8
	sol4 sib4. sol8
	sol2.(
	fa2.)
	mib2.
	fa2.
	re2.~
	re2 r4
	lab'2.
	sol2.
	fa2.~
	fa4 sib sib
	sib4 do4. re8
	mib4 re do
	sib4 do4. sol8
	sib2.
	R
	r4 fa sol
	mib2.~
	mib4 r2 \bar "|."
}

Paroles = \lyricmode {
	C'est toi, frè -- re Scout_? Quel bon -- heur de te voir,
	Pour cau -- se_;
	Près du feu de camp Viens a -- vec moi t'as -- seoir,
	Et cau -- se.
	
	Bon -- soir, frè -- re Scout_! Ton cha -- peau est vrai -- ment
	Bien lar -- ge_!
	
	C'est que, com -- me toi, je ne crains pas le vent
	Du lar -- ge_!
}

Marin = \lyricmode {
	M._Scout ter -- rien_!
	Scout ter -- rien_!
	Tous les deux, pleins d'en -- train,
	Sui -- vons mê -- me che -- min,
	Scout ter -- rien_!
	
	Scout ter -- rien_!
	Pour ai -- der le pro -- chain,
	Mar -- chons tou -- jours, la main
	Dans la main_!
}

Terrien = \lyricmode {
	T._Scout ma -- rin_!
	Tous les deux, pleins d'en -- train,
	Sui -- vons mê -- me che -- min,
	Scout ma -- rin_!
	
	Scout ma -- rin_!
	Scout ma -- rin_!
	Pour ai -- der le pro -- chain,
	Mar -- chons tou -- jours, la main
	Dans la main_!
}

\score{
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \new Voice = "theme" {
	\autoBeamOff
	\MetriqueArmure
	\MusiqueTheme
      	\voiceOne \RefrainTerrien
      }
      \new Voice = "voix2" {
      	\autoBeamOff
      	s4 s2.*30 s2
	\voiceTwo \RefrainMarin
      }
      \new Lyrics \lyricsto theme {
	\Paroles
	\Terrien
      }
      \new Lyrics \lyricsto "voix2" {
      	\Marin
      }
    >>
\layout{}
\midi{}
}
