%Compilation:lilypond RondeDesBatons.ly
%Apercu:evince RondeDesBatons.pdf
%Esclaves:timidity -ia RondeDesBatons.midi
\version "2.12.1"
\include "italiano.ly"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 2=60
  \time 2/2
  \key fa \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do'' {
	\partial 2 la8 sib la sol
	fa4( sol la sib)
	do2 re8 re re si
	do4 do re8 re re si
	do2 do8 do do la
	sib8 do sib sol la4 la8[ fa]
	sol4 sol do8 re do la
	sib8[ do] sib sol la4 la8[ fa]
	do'2\fermata fa,8 fa fa fa
	fa4( do fa sol)
	la2 la8 la la la
	la8 sol la sib la4 sib
	do2 re8 mi fa re
	re4 do re8 mi fa re
	re4 do fa8 re do sib
	la8[ sol] fa sib la4 sol
	fa2\fermata \bar "|."
}

Paroles = \lyricmode {
	Tous les scouts du mon -- de
	Er -- rant à la ron -- de
	Sous un seul dra -- peau
	Ai -- ment leur cu -- lot -- te,
	Leur fou -- lard qui flot -- te,
	Et leur grand cha -- peau,
	Et leur grand cha -- peau,
	Mais en pro -- me -- na -- des
	Les bons ca -- ma -- ra -- des
	Que nous em -- por -- tons
	Et que les scouts ai -- ment
	Pres -- qu'au -- tant qu'eux_- mê -- mes
	Ce sont nos bâ -- tons, Ce sont nos bâ -- tons.
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
