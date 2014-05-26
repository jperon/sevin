%Compilation:lilypond RetourDuCamp.ly
%Apercu:evince RetourDuCamp.pdf
%Esclaves:timidity -ia RetourDuCamp.midi
\version "2.12.1"
\include "italiano.ly"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 2=110
  \time 2/2
  \key fa \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do'' {
	\partial 4 do4
	la2 sol
	fa2. do4
	fa4 sol la sib
	do2 do4 do4
	la2 sol
	fa2. do4
	fa4 sol la sib
	do2. fa,4
	mi2 sol
	do,2. fa4
	mi4 fa sol mi
	fa4( sol) la sol
	la4 sol la sib
	do2. \bar "||" \break fa4^Refrain
	do2. fa4
	do2. fa4
	mi4 re do sib
	la2 sol
	la2 r4 fa'
	do2. fa4
	do2. fa4
	mi4 re do sib
	la2 sol
	\partial 4*3 fa2 r4 \bar "|."
}

Paroles = \lyricmode {
	Le -- vons le camp_!
	Quit -- tons nos ten -- tes blan -- ches,
	Et les gour -- bis
	Où nous a -- vons dor -- mi_;
	En re -- mor -- quant
	Nos char -- ret -- tes qui pen -- chent,
	Gare à la car -- gai -- son_!
	\italique Ren -- trons, ren -- trons,
	ren -- trons, les Scouts, à la mai -- son,
	Ren -- trons, ren -- trons,
	ren -- trons, les Scouts, à la mai -- son.
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
