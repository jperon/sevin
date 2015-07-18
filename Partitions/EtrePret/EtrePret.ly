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
  \tempo 4.=80
  \time 12/8
  \key do \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
  r8 re8 re8
  fa8 mi re fa8. fa16 fa8
  sol8 fa sol la8.\fermata re,16 re8
  fa8 mi re fa8. fa16 fa8
  sol8 fa sol la8.\fermata la16 la8
  sol8 la sol fa mi re
  do8 mi do re4.
  \bar "|."
}

Paroles = \lyricmode {
  Il faut sa -- voir d’a -- bord a -- fin d’a -- gir a -- près.
  De -- puis qu’un jour j’ai dit aux Dou -- ze_: «_Soy -- ez prêts_»,
  Rien ne sert l’i -- gno -- rance ou le \italique pas_- fait_- ex -- près.
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
