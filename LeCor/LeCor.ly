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
  \tempo 4.=72
  \time 3/8
  \key la \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
	\partial 8 mi8
	la4 si8
	dod4 dod8
	si8 dod si
	la8 la mi
	la4 si8
	dod4 dod8
	si8 dod si
	la4.~
	la8 r mi'\f
	mi8 dod mi
	mi8 dod\< mi
	mi8\! re dod
	si8\! r mi\p^\markup{\italic "en écho"}
	mi8\> dod mi
	mi8 dod mi\!
	mi8 re dod
	si8 r mi,\mf^\markup{\italic "Plus lent"}
	la4 si8
	dod4 dod8
	si8 dod si
	la8 la mi
	la4 si8
	dod4 dod8
	si8-.^\markup{\italic rall.} dod si
	la4.~
	la4 r8 \bar "||"
	r8 dod^\markup{Couplet (de préférence en solo)} re
	mi4 mi8
	mi8([ re)] dod
	re4 re8
	re8 dod si
	dod4 dod8
	dod8 si la
	si4.~
	si8 dod re
	mi4 mi8
	mi8 re dod
	re4 re8
	re8 dod si
	dod4 dod8
	dod8 si la
	si4.~
	si8 dod re
	mi4 mi8
	mi8 re dod
	re4 re8
	re8 dod si
	dod4 dod8
	dod8 si la
	\partial 4 si8 r \bar "|."
}

Paroles = \lyricmode {
	Dans le soir d'or
	Ré -- son -- ne, ré -- son -- ne,
	Dans le soir d'or
	Ré -- son -- ne le cor.
	Ré -- son -- ne, ré -- son -- ne, ré -- son -- ne le cor,
	Ré -- son -- ne, ré -- son -- ne, ré -- son -- ne le cor.
	Dans le soir d'or
	Ré -- son -- ne, ré -- son -- ne,
	Dans le soir d'or
	Ré -- son -- ne le cor.
	
	C'est le cor du grand Ro -- land,
	Qui sonne af -- fo -- lant
	Sous le ciel san -- glant.
	C'est le cor du roi Saint Lou -- is
	Son -- nant l'hal -- la -- li
	Des pa -- ïens mau -- dits.
	C'est le cor du gai Du -- gues -- clin
	Har -- ce -- lant sans fin
	L'An -- glais qui le craint.
}

\score{
    \new Staff <<
      \set Staff.midiInstrument = "french horn"
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
