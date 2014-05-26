%Compilation:lilypond LaHutteEstUnGrandMagasin.ly
%Apercu:evince LaHutteEstUnGrandMagasin.pdf
%Esclaves:timidity -ia LaHutteEstUnGrandMagasin.midi
\version "2.12.1"
\include "italiano.ly"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4=100
  \time 2/4
  \key la \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do'' {
	r4 r8 mi
	dod8 dod si si
	la8 la mi mi'
	dod8 dod si si
	la8 la mi mi
	la8 sold fad fad
	sold8 la si4~
	si2~ si4 si8 mi
	dod8 la si mi
	dod8 la si4
	re8 dod4 si8
	mi4. re8
	dod4 si
	la4 r
}

Paroles = \lyricmode {
	La Hutte est un grand ma -- ga -- sin,
	Les ven -- deurs y sont très très bien_:
	Ils vous font des sou -- ri -- res ro -- ses,
	En vous di -- sant d'un tas de choses_:
	On n'en vend pas,
	\italique On n'en vend pas_!
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
