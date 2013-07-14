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
  \tempo 4=110
  \time 2/4
  \key lab \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do'' {
	\partial 8 lab8
	lab8 do mib fa
	mib8 reb16 do sib8 do
	lab do mib fa
	mib4 sib8 lab
	lab8 do mib fa
	mib8 reb16 do sib8 do
	lab8 do mib re
	mib4 mib
	\tempo 4=90
	lab,8 do lab sol
	lab8 do sib4
	sib8 do mib reb
	sib8 do lab4
	lab8 do lab sol
	lab8 do sib4 \breathe
	sib8 do mib reb
	\partial 8*3 sib8 do lab8 \bar "|."
}

Paroles = \lyricmode {
	Ce sont de pau -- vres gens,
	Bon -- nes Gens,
	Qui à vous se pré -- sen -- tent.
	Nous cher -- chons lieu de camp,
	Bon -- nes Gens,
	Pour y dres -- ser nos ten -- tes.
	Fai -- tes nous la cha -- ri -- té
	D'un coin pour nous a -- bri -- ter_;
	S'il vous manque un p'tit ter -- rain…
	Un grand f'rait tout aus -- si bien_!
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
