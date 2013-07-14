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
  \tempo 4.=80
  \time 9/8
  \key sib \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do'' {
	\partial 8*4 la8 la4 sib8
	do4. do sib4 la8
	do4. sib4 sol8 \times 3/4 {la8 sib la sol}
	la4. sol8 r la8 la4 sib8
	do4. do sib4 la8
	do4.~ do4 sol8 \times 3/4 {la8 sib la sol}
	fa4.~ fa4 r8 sol fa fa
	\time 6/8 re'4. re
	\time 9/8 do4.~ do4 r8 do sib sib
	\acciaccatura{do16[ sib]} la2. sol4.
	\partial 8*5 fa4.\fermata r4 \bar "|."
}

Paroles = \lyricmode {
	Il a ga -- gné sa verte ai -- gret -- te,
	\italique C'est un chef très chou -- et -- te_!
	\roman Il a ga -- gné son p'tit ba -- lai,
	\italique C'est un chef très ca -- lé_!
	C'est un chef très chou -- ette_!
	C'est un chef très ca -- lé_!
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
