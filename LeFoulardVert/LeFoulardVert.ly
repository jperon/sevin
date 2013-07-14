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
  \tempo 4=80
  \time 2/4
  \key do \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do'' {
	sol8 la16 si do si la mi
	sol2
	mi8 mi16 sol fa mi re do
	sol'2
	sol8 sol16 fad fa la la fa
	mi4 sol
	\bar "||" \time 4/4
	re8^\markup{\italic "ad lib."} re re4 r8 mi re do
	\bar "||" \time 2/4
	mi4^\markup{\italic "Tempo"} re
	sol8 la16 si re do la do
	do4( sol)
	r16 sol sol fad fa sol si\fermata re
	do2 \bar "|."
	r16^\markup{\italic "Dernier couplet"} sol sol fad fa sol si, re
	do2 \bar "|."
}

Paroles = \lyricmode {
	C'é -- tait un pe -- tit Scout de France,
	A -- vait un jo -- li fou -- lard vert_;
	Dans sa vi -- rile a -- do -- les -- cen -- ce,
	Droit et pur, le Scout de Fran -- ce,
	D'un jeu -- ne prince il a -- vait l'air,
	A -- vec son jo -- li fou -- lard vert.
	
	Les yeux ban -- dés du fou -- lard vert.
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
