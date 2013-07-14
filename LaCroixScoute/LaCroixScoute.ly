\version "2.12.1"
\include "italiano.ly"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4.=65
  \time 6/8
  \key sib \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

MusiqueTheme = \relative do' {
	\partial 8*3 re8. re16 re8
	sol4 sol8 la8.([ sib16)] la8
	sol4. re'4 re8
	fa4 fa8 mib8. mib16 mib8
	re4. do4 do8
	sib8. sib16 sib8 sib([ la)] sol
	\bar "||" \time 9/8 sol4. fad fad4 fad8
	\bar "||" \time 6/8 sol4 sol8 sol8. sol16 sol8
	la4. la8 la la
	sib4. sib8 sib sib
	do4. do8 re mib
	re8([ do)] sib la([ sib)] do
	sib4.( sol)
	\bar "||" \time 9/8 re'4. r re,8 si re
	\bar "||" \time 6/8 \key sol \major
	sol4. la8 si la
	sol4. la8 si la
	sol8([re)] sol la([ si)] la
	sol4. la8([ si)] do
	re8. re16 re8 mi([ re)] do
	\bar "||" \time 9/8 si4. la la8 la8. si16
	\bar "||" \time 6/8 do4. do8 si la
	re4. re8 do si
	la8([ sol)] fad mi([ fad)] sol
	re4. re8 sol si
	re4.\fermata sol,
	\partial 8*3 r4. \bar "|."
}

Paroles = \lyricmode {
	Croix de Mes -- si -- re Go -- de -- froy,
	Le pre -- mier Fran -- çais qui fut roi
	De la ter -- re de Pa -- les -- ti -- ne,
	Voi -- ci donc qu'a -- près neuf cents ans,
	Ô Croix sé -- vère aux bras pe -- sants,
	À re -- fleu -- rir Dieu te des -- ti -- ne.
	Tu bla -- son -- nais le bou -- cli -- er
	De cet il -- lus -- tre che -- va -- lier
	Et le fa -- ni -- on de sa lan -- ce,
	Et tu re -- nais sur nos cha -- peaux
	Et tu dé -- co -- res les dra -- peaux
	Des Scouts de Fran -- ce.
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
