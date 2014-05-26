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
  \time 6/8
  \key sib \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
	\partial 4. fa8 re mib
	fa4. fa8 sib8. sib16
	la4 sol8 \breathe sol la sol
	fa4. fa8 sol8. mib16
	re4 r8 re8 re mib
	fa4. fa8 fa8. sol16
	fa4 mi8 \breathe mi mi fa
	sol4. la8 sib8. do16
	sib4 la8 \breathe la sib do
	re2 do4
	sib4. la8 sol do
	sib2 la4
	sib4.\fermata
}

Paroles = \lyricmode {
	À no -- tre camp la vie est bel -- le,
	Tout près de nous nous sen -- tons Dieu.
	Quand à l'au -- rore, il nous ap -- pel -- le,
	La terre en -- tière a l'air nou -- vel -- le,
	Le ciel est tou -- jours bleu,
	Le ciel est tou -- jours bleu.
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
