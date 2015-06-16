%Compilation:lilypond ChantonsNosMontagnes.ly
%Apercu:evince ChantonsNosMontagnes.pdf
%Esclaves:timidity -ia ChantonsNosMontagnes.midi
\version "2.12.1"
\language "français"

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
	\partial 4 re4
	sol4 sol si8[( la])
	sol4 sol sol8 la
	si2 si4
	la2 la8 si
	do2 do4
	si4 si si8 si
	la2 la4
	sol2 \bar "||" re4^Refrain
	sol4 sol si8[( la])
	sol4 sol sol8 la
	si2 si4
	la2 la8 si
	do2 do4
	si4 si si8 si
	la2 la4
	\partial 2 sol2\fermata \bar "|."
}

Paroles = \lyricmode {
	Chan -- tons nos mon -- ta -- gnes
	Et leurs noms fa -- meux,
	In -- vio -- la -- ble gar -- de
	Du sol des a -- ïeux.
	
	\italique Ma Trou -- pe, ra -- vi -- e
	De ton camp d'é -- té,
	Cam -- pe dans la Vi -- e
	Et dans la Beau -- té_!
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
