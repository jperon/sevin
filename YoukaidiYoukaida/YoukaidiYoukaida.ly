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
  \tempo 4=120
  \time 2/4
  \key sol \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do'' {
	si8^Solo\f sol sol mi
	re8 mi re4 \bar "||"
	re8^Chœur\p si' la4
	re,8 la' sol4 \bar "||"
	si8^Solo\f sol sol mi
	re8 mi re4 \bar "||"
	re8^Chœur\p si' la la
	sol4 r \bar "||"
	la8^Solo\f si la si
	la8 si la la
	la8 si la re
	mi8 re re re \bar "||"
	si8^Chœur\p si si4
	si8 re re4
	do8\< do do mi\!
	mi8 re re4
	si8 si si4
	si8\< re re4\!
	do8\> do do do\!
	si2 \bar "|."
}

Paroles = \lyricmode {
	Quand se lè -- ve le so -- leil,
	\italique You -- kaï -- di, You -- kaï -- da_!
	\roman Le cor son -- ne le ré -- veil,
	\italique You -- kaï -- di, aï -- da_!
	\roman On voit sor -- tir de la ten -- te
	La Troupe a -- ler -- te qui chan -- te_:
	\italique You -- kaï -- di, You -- kaï -- da,
	You -- kaï -- di, aï -- di, aï -- da_!
	You -- kaï -- di, You -- kaï -- da,
	You -- kaï -- di, aï -- da_!
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
