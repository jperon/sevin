%Compilation:lilypond LeMoulin.ly
%Apercu:evince LeMoulin.pdf
%Esclaves:timidity -ia LeMoulin.midi
\version "2.12.1"
\language "français"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4=110
  \time 3/4
  \key sol \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do'' {
	re4 si8 re si re
	mi8 re si4 r
	do4 la8 do la do
	fad8 mi re4. si8 \breathe
	re4 si8 re si re
	mi8 do sol'4 r
	fad4 mi8 do la do
	mi8 re si4. si8
	re4 si8 re si re
	mi8 do sol'4 r
	fad4 mi8 re do fad,
	si8 la sol2 \bar "||"
}

Paroles = \lyricmode {
	Le joy -- eux tic_- tac du mou -- lin
	Monte au ciel comme u -- ne pri -- è -- re
	Et ré -- veil -- le de grand ma -- tin
	Le meu -- nier a -- vec la meu -- niè -- re,
	Et ré -- veil -- le de grand ma -- tin
	Le meu -- nier a -- vec la meu -- nière.
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
