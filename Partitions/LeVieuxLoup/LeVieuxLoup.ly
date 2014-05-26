%Compilation:lilypond LeVieuxLoup.ly
\version "2.12.1"
\include "italiano.ly"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4=100
  \time 2/4
  \key sib \major
}

MusiqueTheme = \relative do'' {
	re8 do sib do
	re4 sib8 la
	sol2
	fa4 r
	re'8 do sib do
	re4 sib8 sol
	la2~
	la4 r
	mib'8 re do re
	mib4 do8 sib
	la2
	sol4 r
	la8 sol fa sol
	la4 sib8 do
	sib2~
	sib8 sib la sib
	la4. sol8
	fad8 sol la sib
	do4 do~
	do8 do re mi
	do2~
	do8 do re mi
	do2~
	do8 sib la sib
	la4. sol8
	fad8 sol la sib
	do4 do~
	do8 do re la
	do4. sib8
	la8 sol la sib
	do4 r
	r8 fa, fa fa
	mib' mib do do
	la4. la8^rit
	sib8 sib la sib
	do2 \bar "||"
	
	sib4^Refrain do8 re
	fa4 do8 re
	sib2
	fa4 r
	sol4 la8 sib
	re4 la8 sib
	sol2~
	sol4 sol
	mib'4 mib
	mib8 do re mib
	re2
	sib4 do8 re
	do4 sol
	la4 sib
	do2~
	do4 r
	sib4 do8 re
	fa4 do8 re
	sib2
	fa4 r
	sol4 la8 sib
	re4 la8 sib
	sol2~
	sol4 sol
	mib'4 mib
	mib8 do re mib
	re2
	fa4 fa,8 re'
	do2
	fa4 do8 re
	sib2~
	sib4 r \bar "|."
}

Paroles = \lyricmode {
	For -- mez le cer -- cle de pa -- ra -- de
	Au -- tour du Ro -- cher du Con -- seil
	Pour chan -- ter en chœur, ca -- ma -- ra -- des,
	L'é -- lo -- ge d'un Loup sans pa -- reil_!
	C'est un vieux Loup à la four -- ru -- re gri -- se,
	Au flair sub -- til, aux pas lé -- gers,
	Tou -- jours en chasse et prêt à la sur -- pri -- se,
	Bra -- vant tou -- jours fa -- ti -- gues et dan -- gers.
	O jeu -- nes Loups, ap -- pre -- nez- la,
	La chan -- son d'A -- ké -- la_!
	
	C'est un vieux Loup très hon -- nê -- te
	Que nous ai -- mons tous beau -- coup,
	Sa con -- sci -- ence est en -- COR -- NET -- TE
	Des for -- faits des au -- tres Loups.
	Sous le so -- leil ou la plui -- e
	On le sui -- vrait n'im -- porte où,
	Car il nous a don -- né sa vi -- e,
	Il nous ai -- me, le Vieux Loup_!
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
