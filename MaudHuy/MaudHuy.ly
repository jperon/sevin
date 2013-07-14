\version "2.12.1"
\include "italiano.ly"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4.=100
  \time 6/8
  \key sol \major
}

MusiqueTheme = \relative do'' {
	\partial 8 si8
	sol4 si8 sol4 si8
	re4. do4.
	la8 si do la4 si8
	sol4.~ sol8 r si
	sol4 si8 sol4 si8
	re4. do4 r8
	la8 si do la4 si8
	sol4.~ sol8 r la
	la4 si8 sol4 la8
	si4. la4 si8
	si8[( do]) re8 re[( do]) si
	si4.( la8) r si
	sol4 si8 sol4 si8
	re4. do4 r8
	la8 si do la4 si8
	re4. r4^"Chœur" si8  
	sol4 si8 sol4 si8
	re4. do4 r8
	la8 si do la4 si8
	\partial 8*5 sol4 r8 r4 \bar "|."
}

Paroles = \lyricmode {
	Dans les trou -- pes fran -- çai -- ses
	Il est un gé -- né -- ral,
	Frin -- gant, chaud com -- me brai -- ses,
	Gail -- lard, o -- ri -- gi -- nal.
	Fils de Metz la Pu -- cel -- le
	C'est lui_ qui nous_ con -- duit_,
	Et la Fran -- ce l'ap -- pel -- le
	L'gé -- né -- ral de Mau -- d'huy_!
	Et la Fran -- ce l'ap -- pel -- le
	L'gé -- né -- ral de Mau -- d'huy_!
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
