%Compilation:lilypond GribouilleSEstFaitBoyScoute.ly
%Apercu:evince GribouilleSEstFaitBoyScoute.pdf
%Esclaves:timidity -ia GribouilleSEstFaitBoyScoute.midi
\version "2.12.1"
\language "français"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4=120
  \time 4/4
  \key sol \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
	\partial 4 re4\f
	si'4 la sol mi
	re4.( mi8) re4 \breathe fad8 sol
	la2 re,4 sol8 la
	si2\< sol4\! re
	si'4 la sol mi
	re4.( mi8) re4 sol
	fad4 la mi la
	re,4 re'8^Tous\f re re re r4 \bar "||"
	si8^Refrain\f la sol la si la sol la
	si4. do8 si4 la
	la8^mf sol fad sol la sol fad sol
	la4.\< si8 si2\!
	si8\mf la sol la si la sol la
	si4. do8 si4 la
	la8\f sol fad sol la sol fad sol
	\partial 4*3 la4. si8 sol4 \bar "|."
}

Paroles = \lyricmode {
	Gri -- bouill' s'est fait boy_- scou -- te,
	Mi -- ron -- tai -- ne, Mi -- ron -- tai -- ne,
	Gri -- bouill' s'est fait boy_- scou -- te,
	Et vient de s'é -- qui -- per
	(Ça n'est pas vrai_!)
	
	\italique Ah_! y fal -- lait pas, y fal -- lait pas qu'y ail -- le,
	Ah_! y fal -- lait pas, y fal -- lait pas y_al -- ler_!
	Ah_! y fal -- lait pas, y fal -- lait pas qu'y ail -- le,
	Ah_! y fal -- lait pas, y fal -- lait pas y_al -- ler_!
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
