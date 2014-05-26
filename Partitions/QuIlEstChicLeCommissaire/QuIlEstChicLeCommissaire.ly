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
  \tempo 4=90
  \time 4/4
  \key re \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do'' {
	R1
	la8\mf sol la sol la sol la sol
	la4 mi dod mi
	la4 dod si dod
	la2 mi
	la8^\markup{Chœur \italic "Plus vite"} sol la sol la sol la sol
	la4 mi dod mi
	la4 dod si dod
	la2 mi
	re'2\f\< si4 re
	dod2\! la4 dod
	mi2 si4 dod8 re
	dod2( la)
	re2\< si4 re
	dod2\! la4 dod
	mi2 si4 dod8 si
	la1
	la'1^\markup{\italic crié} \bar "|."
	
}

Paroles = \lyricmode {
	Qu'il est, qu'il est, qu'il est, qu'il est chic, chic, chic, chic, chic,
	le Com -- mis -- sai -- re_!
	\italique Qu'il est, qu'il est, qu'il est, qu'il est chic, chic, chic, chic, chic,
	le Com -- mis -- sai -- re_!
	Ah_! il n'y_a pas, il n'y_a pas deux chefs comm' ça,
	Ah_! il n'y_a pas, il n'y_a pas deux chefs comm' ça,
	Hou_!
}

\score{
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \new Voice = "theme" {
	\override Score.PaperColumn #'keep-inside-line = ##t
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
