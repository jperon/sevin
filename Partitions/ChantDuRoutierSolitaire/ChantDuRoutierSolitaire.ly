%Compilation:lilypond .ly
%Apercu:evince .pdf
%Esclaves:timidity -ia .midi
\version "2.12.1"
\language "français"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4.=50
  \time 6/8
  \key fa \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
	\partial 8 do8\p
	do fa sol la4 fa16 mi
	re8. sib'16 sib8 sib4 sib16 sib
	do4 fa,16 fa fa8. mi16 fa8 sol4.~ sol4 do,8
	do8 fa sol la4 fa16 mi
	re8. sib'16 sib8 sib4 sib16 sib
	la8. sol16 fa8 mi8. fa16 sol8
	fa2.
	\tempo 4.=40
	do'4.\mf sib8. la16 sol8
	la4.~ la4 re,16 re
	fa4 fa16 fa fa8 mi fa
	sol4.~ sol4
	\tempo 4.=50
	do,8\p
	do8 fa sol la4 fa16 mi
	re8. sib'16 sib8 sib4 sib16 sib
	la8. sol16 fa8 mi8. fa16 sol8
	fa2.
}

Paroles = \lyricmode {
	Qui me don -- ne -- ra
	De par -- tir tout là_- bas,
	Loin du bruit, du plai -- sir et du mal,
	Et d'ou -- vrir ma tente
	Aux cou -- leurs é -- cla -- tantes,
	Sou -- ri -- ante au so -- leil ma -- ti -- nal_?
	Chante_! ô mon cœur, chante
	La loi scoute et son pur i -- dé -- al
	Qui te don -- ne -- ra de par -- tir tout là_- bas,
	Loin du bruit, du plai -- sir et du mal_!
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
