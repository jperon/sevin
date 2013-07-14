%Compilation:lilypond LesExcusesDeLAspirant.ly
%Apercu:evince LesExcusesDeLAspirant.pdf
%Esclaves:timidity -ia LesExcusesDeLAspirant.midi
\version "2.12.1"
\include "italiano.ly"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4=100
  \time 3/4
  \key do \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do'' {
	\partial 8 sol8
	la8 si la la mi mi
	sol2~ sol8 sol8
	la8 si la la mi \breathe mi
	sol2~ sol8 mi
	mi8 mi mi mi sol mi
	mi4 re r8 la'
	la8 la re do si la
	do2 r8 la
	la8 la sol sol fa mi
	sol4~ sol8 mi mi sol
	re2 do4
	\partial 8*5 r2 r8 \bar "|."
	sol'4^"Dernier couplet"~ sol8 mi re do
	sol'2.
	\partial 8*5 sol2 r8 \bar "|."
}

Paroles = \lyricmode {
	Mon cher scout -- mestre, ex -- cu -- sez_- moi_:
	Je n'i -- rai pas au camp. Pour -- quoi,
	Il faut bien que je vous l'é -- cri -- ve_:
	Je suis cou -- ché, tout sim -- ple -- ment,
	Je vais vous ex -- pli -- quer com -- ment
	Ce -- là m'ar -- ri -- ve.
	
	rant Mort pour ses frè -- res.
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
