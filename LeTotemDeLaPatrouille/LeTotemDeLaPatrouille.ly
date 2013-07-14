%Compilation:lilypond LeTotemDeLaPatrouille.ly
%Apercu:evince LeTotemDeLaPatrouille.pdf
%Esclaves:timidity -ia LeTotemDeLaPatrouille.midi
\version "2.12.1"
\include "italiano.ly"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4=110
  \time 2/4
  \key do \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do'' {
	do8\p^Solo do do4
	sol4 la8 si
	la4 sol\breathe
	do8\f^Chœur do do4
	sol4 la8 si
	la4 sol\breathe
	re'8^Solo re re mi
	do re re mi16 re
	do4 sol\breathe
	re'8\f^Chœur re re mi
	do re re mi16 re
	do4 r \bar "|."
}

VoixDeux = \relative do' {
	mi8 mi mi4
	mi4 fa8 sol
	fa4 mi
	mi8 mi mi4
	mi4 fa8 sol
	fa4 mi
	fa8 fa fa sol
	mi8 fa fa sol16 fa
	mi4 mi
	fa8 fa fa sol
	mi8 fa fa sol16 fa
	mi4 r \bar "|."
}

Paroles = \lyricmode {
	\roman Choi -- sis -- sons pour la Pa -- trouil -- le,
	\italique Choi -- sis -- sons pour la Pa -- trouil -- le,
	\roman Un em -- blè -- me de bon ton, ma pa -- ro -- le,
	\italique Un em -- blè -- me de bon ton, mon gar -- çon.
}

\score{
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \new Voice = "theme" {
	\autoBeamOff
	\MetriqueArmure
	\voiceOne
	\MusiqueTheme
      }
      \new Voice = "voix2" {
	\autoBeamOff
	\MetriqueArmure
	\voiceTwo
	\VoixDeux
      }
      \new Lyrics \lyricsto theme {
	\Paroles
      }                       
    >>
\layout{}
\midi{}
}
