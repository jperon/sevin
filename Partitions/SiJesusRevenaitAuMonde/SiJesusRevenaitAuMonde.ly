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
  \tempo 4=120
  \time 3/4
  \key fa \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
	\partial 8 do8
	fa8 sol la sib la sol
	la4 fa r8 do
	fa la do do re la
	do8.([ sib16)] la4 r8 la
	la8. la16 la8 la do la
	sol2 r8 sol
	sol8 sol la sol fa sol
	la8.[(^\markup{\italic rall.} sol16]) fa4 sol
	\bar "||" \time 2/4 fa4. r8 \bar "||"
	\acciaccatura re'8^Chœurs do4 \acciaccatura re8 do4
	\acciaccatura re8 do2
	do8. sib16 la8 re
	do2
	fa,8. sol16 la8 sib
	la8 la sol fa
	sol4( do,)
	do2
	\acciaccatura re'8^Chœurs do4 \acciaccatura re8 do4
	\acciaccatura re8 do2
	do8. sib16 la8 re
	do4( fa)\fermata
	fa,8. sol16 la8 sib
	la8 sol sol la16 sol
	fa4 sol
	\partial 8*3 fa4 r8 \bar "|."
}

MusiqueAccompagnement = \relative do'' {
	s8*53
	la4 la
	la2
	la8. sol16 fa8 fa
	la2
	fa8. mi16 fa8 re
	do8 do re re
	sol4( do,)
	do2
	la'4 la
	la2
	la8. sol16 fa8 fa
	la2
	do,8. do16 do8 re
	do8 do do do16 do
	la4 sib
	la4 r8
}

Paroles = \lyricmode {
	Si Jé -- sus re -- ve -- nait au mon -- de,
	Le bon Sau -- veur à bar -- be blon -- de,
	Le Char -- pen -- tier pur, humble et doux,
	Jé -- sus de -- vrait re -- naître au mon -- de,
	Chez nous_!
	
	\italique Iou_! iou_! iou_!
	Chan -- tez donc, les Scouts,
	car le di -- vin Maî -- tre va re -- naî -- tre_!
	Iou_! iou_! iou_!
	Chan -- tez donc, les Scouts_!
	car Jé -- sus peut_- ê -- tre va re -- ve -- nir chez nous_!
}

\score{
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \new Voice = "theme" {\voiceOne
	\override Score.PaperColumn #'keep-inside-line = ##t
	\autoBeamOff
	\MetriqueArmure
	\MusiqueTheme
      }
      \new Voice = "accompagnement" {\voiceTwo
	\override Score.PaperColumn #'keep-inside-line = ##t
	\autoBeamOff
	\MetriqueArmure
	\MusiqueAccompagnement
      }
      \new Lyrics \lyricsto theme {
	\Paroles
      }                       
    >>
\layout{}
\midi{}
}
