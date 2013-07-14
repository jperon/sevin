%Compilation:lilypond LeVieuxChalet.ly
%Apercu:evince LeVieuxChalet.pdf
%Esclaves:timidity -ia LeVieuxChalet.midi
\version "2.12.1"
\include "italiano.ly"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4=90
  \time 3/4
  \key sol \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
	\partial 4 re4\f
	re'4. do8 si8. do16
	si4 la re,
	re'8. do16 si4 la
	sol2 re4\pp
	re'4. do8 si8. do16
	si4 la re,
	re'8. do16 si4 la
	sol2 sol4\mf
	la4. si8 sol la
	si4. do8 la si
	do4. re8 si do
	re2 sol,4\f
	mi'4. re8 do si
	la8.[ si16] la4 la
	re8. do16 si4 la
	\partial 2 sol2 \bar "|."
}

Paroles = \lyricmode {
	\italique Là_- haut sur la mon -- ta -- gne,
	\roman L'é -- tait un vieux cha -- let,
	\italique Là_- haut sur la mon -- ta -- gne,
	\roman L'é -- tait un vieux cha -- let_;
	Murs blancs, toit de bar -- deaux,
	De -- vant la porte, un vieux bou -- leau,
	\italique Là_- haut sur la mon -- ta -- gne,
	\roman L'é -- tait un vieux cha -- let.
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
