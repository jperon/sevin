%Compilation:lilypond .ly
%Apercu:evince .pdf
%Esclaves:timidity -ia .midi
\version "2.12.1"
\language "français"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 2.=60
  \time 3/4
  \key sol \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do'' {
	\partial 4 si4
	re4.\accent mi8 re8. do16
	si4 sol sol
	la8 la re,4 re
	si'8 si sol4 si
	re4. mi8 re8. do16
	si4 sol sol
	la8 la re,4 re
	sol2 sol4
	la4\marcato re, re8 re
	si'4\marcato sol sol
	la4\marcato re, re8 re
	si'4\marcato sol sol
	la4\marcato re, re8 re
	si'4\marcato sol sol
	la4\marcato re, re8 re
	sol2 si4
	re4.\accent mi8 re8. do16
	si4 sol sol
	la8 la re,4 re
	si'8 si sol4 si4
	re4.\accent mi8 re8. do16
	si4 sol sol
	la8 la re,4 re
	sol2 sol4
	la8 la re,4 re
	si'8 si sol4 sol4
	la8 la re,4 re
	si'8 si sol4 si
	re4. mi8 re8. do16
	si4 sol sol
	la8 la re,4 re
	\partial 2 sol2 \bar "|."
}

Paroles = \lyricmode {
	Plus ya de Scouts en -- sem -- ble,
	Plus on s'a -- mus', plus on s'a -- mus',
	Plus ya de Scouts en -- sem -- ble,
	Plus on s'a -- mus' au camp.
	Car mon Scout dit à ton Scout
	et ton Scout dit à son Scout
	et son Scout dit à mon Scout
	et mon Scout me le dit_:
	Plus ya de Scouts en -- sem -- ble,
	Plus on s'a -- mus', plus on s'a -- mus',
	Plus ya de Scouts en -- sem -- ble,
	Plus on s'a -- mus' au camp.
	Plus on s'a -- mus', plus on s'a -- mus',
	plus on s'a -- mus', plus on s'a -- mus',
	Plus ya de Scouts en -- sem -- ble,
	Plus on s'a -- mus' au camp.
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
