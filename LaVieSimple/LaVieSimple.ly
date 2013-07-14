\version "2.12.1"
\include "italiano.ly"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4.=90
  \time 6/8
  \key sol \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do'' {
	\partial 4. r8 sol la
	si4 si8 si4 si8
	si8 sol4~ sol8 sol la
	si4 si8 si4 si8
	si4.~ si8 si si
	re4 la8 la4 la8
	la4 la8~ la sol la
	si4 la8 sol4 si8
	re4.~ re8 \bar "||"\break
	
	sol,8^Chœur la
	si4 si8 si4 si8
	si4.~ si8 sol la
	si4 si8 si4 si8
	si4.~ si8 re do
	si4 la8 re4 do8
	si4.~ si8 re do
	si4 si8 la4 la8
	\partial 4. sol4. \bar "|."
}

Paroles = \lyricmode {
	Les «_Boi- -- Scouts_» sont po -- pu -- lai -- res,
	On est pour eux aux p'tits soins_:
	On leur offre un tas d'af -- fai -- res
	Dont ils n'ont ja -- mais be -- soin_!
	
	\italique É -- cou -- tez, les scouts, les scouts,
	É -- cou -- tez ce qu'il nous faut_:
	É -- cou -- tez, les scouts, les scouts,
	É -- cou -- tez ce qu'il nous faut_:
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
