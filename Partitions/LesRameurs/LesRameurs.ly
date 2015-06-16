%Compilation:lilypond LesRameurs.ly
%Apercu:evince LesRameurs.pdf
%Esclaves:timidity -ia LesRameurs.midi
\version "2.12.1"
\language "français"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4=80
  \time 2/4
  \key re \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

Un = \relative do' {
	re4\accent re\accent
	re8.\accent mi16 fad4
}

Deux = \relative do' {
	fad8.\accent fad16 fad8. sol16
	la4. r8
}

Trois = \relative do'' {
	re8. la16 \times 2/3 { la8 sol fad }
	\times 2/3 { fad8 mi re } re4
}

Quatre = \relative do'' {
	la8. fad16 fad8. mi16
	re2 \bar "|."
}

Paroles = \lyricmode {
	Ra, ra, ra -- me donc,
	Vo -- gue, le ca -- not_!
	Jo -- li -- ment, jo -- li -- ment, jo -- li -- ment,
	At -- ta -- quons le flot_!
}

\score{
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \new Voice = "theme" {
	\override Score.PaperColumn #'keep-inside-line = ##t
	\autoBeamOff
	\MetriqueArmure
	\Un \bar "||" \Deux \bar "||" \Trois \bar "||" \Quatre
      }
      \new Lyrics \lyricsto theme {
	\Paroles
      }                       
    >>
\layout{}
\midi{}
}
