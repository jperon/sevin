\version "2.12.1"
\language "français"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4=80
  \time 2/4
  \key mib \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
	\partial 4 \times 2/3 { mib8 fa sol } \bar "||"
	do8 r16 sib sib4~
	sib8 r \times 2/3 { \acciaccatura { lab16[ sib] } lab8 sol fa }
	mib8 r sib4~
	sib8 r \times 2/3 { sol'8 lab sib }
	mib8. re16 re8. do16
	do8. do16 \bar "'" \times 2/3 { lab8 sol fa }
	mib8. sol16 sib4~
	sib8 r \times 2/3 { sol8 lab sib }
	do8 r re r
	mib4 r
	fa2\fermata
	\times 2/3 { sol,8 lab sib } \times 2/3 { re4 do8 }
	sib4 \times 2/3 { sib8 do re }
	mib8 r mib^Fine r \bar "||" \break
	
	\partial 4 \times 2/3 { mib,8 fa sol }
	do8 r16 sib sib4~
	sib8 r \times 2/3 { \acciaccatura { lab16[ sib] } lab8 sol fa }
	mib8 r sib4~
	sib8 r \times 2/3 { sol'8 lab sib }
	mib8.( re16) re8.( do16)
	do8. do16 \bar "'" \times 2/3 { lab8 sol fa }
	mib8. sol16 sib4~
	sib8 r sol8. la16
	sib4 \times 2/3 { do4 re8 }
	mib4( \times 2/3 { re4) do8 }
	\times 2/3 { re4 la8 } \times 2/3 { sib4 sol8 }
	fa4 r8 fa
	solb8 solb solb8. solb16
	solb4 lab8 sib
	fa4 fa8. fa16
	fa4 fa8 r16 sib
	sib2~
	sib8. sib16 sol8. mib16
	fa2~
	fa8 r sib8. sib16
	sib2~
	sib4 sol8. mib16
	fa2
	r8 re16([ mib)] fa sol lab sib
	do8 fa,16([ sol)] lab sib do re
	mib2~^"D. C. al fine"
	\partial 4 mib4 \bar "|."
}

Paroles = \lyricmode {
	Viens a -- vec nous, p'tit Loup,
	Viens a -- vec nous, viens_!
	Tu as quit -- té tes pe -- tits frè -- res_:
	En voi -- ci de plus grands...
	Viens a -- vec nous, viens, viens, viens_!
	Viens a -- vec nous, p'tit Loup, nous t'ai -- m'rons bien_! Viens_!
	
	Viens a -- vec nous, p'tit Loup,
	Viens a -- vec nous, viens_!
	Tu con -- naî -- tras la ten -- te, tu con -- naî -- tras le sac_!
	Tu sau -- ras ce que c'est que de cui -- re son pain,
	De trou -- ver ton che -- min en sui -- vant les é -- toi -- les.
	Un jour tu pro -- met -- tras de ser -- vir ton pa -- ys,
	Et de ser -- vir ton Dieu comme un chré -- tien vail -- lant_!
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
