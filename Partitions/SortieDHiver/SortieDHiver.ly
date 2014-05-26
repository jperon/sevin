%Compilation:lilypond SortieDHiver.ly
%Apercu:evince SortieDHiver.pdf
%Esclaves:padsp timidity -ia SortieDHiver.midi
\version "2.12.1"
\include "italiano.ly"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4=100
  \time 4/4
  \key fa \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
	do8 la' la8. la16 sol8 sol fa4
	fa8. fa16 fa8 fa re'4 do
	do,8 la' la8. la16 sol8 sol fa8. fa16
	la8 sol fa mi sol4 fa \bar "||"
	la8^Refrain fa fa8. fa16 mi8 fa sol sol
	sol16 sol sol sol sol8 fa16 sol la8 fa sol4
	la16 fa fa fa fa fa fa fa mi8 fa sol sol
	sib16 sib sib sib la8 la16 la sol8 sol fa4 \bar "|."
}

Paroles = \lyricmode {
	"1. Le" dé -- part me pince le cœur,
	C'est une a -- ven -- tu -- re_!
	É -- tant don -- née la ri -- gueur
	De la tem -- pé -- ra -- tu -- re_!
	
	\italique
	Tout au bord de la ri -- viè -- re,
	Lais -- sez_- moi vous dire qu'il fai -- sait gla_- gla_!
	Je suis tout_- à_- fait de l'a -- vis d'ma grand_- mè -- re,
	On n'couche pas de -- hors quand il fait c'temps_- là_!
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
