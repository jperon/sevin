\version "2.12.1"
\language "français"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4.=120
  \time 6/8
  \key fa \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
	\partial 8 do8
	fa4.~ fa4 fa8
	mi4 fa8 sol4 fa8
	re4. r
	sib'4. sib4 sib8
	la4 sol8 fa4 sol8
	la4.( sol)
	fa4. r4 do8
	fa4.~ fa4 fa8
	mi4 fa8 sol4 fa8
	re4. r
	sib'4. sib4 sib8
	la4 sol8 fa4 sol8
	la4.( sol)
	fa4. r4 fa8
	sib4.~ sib4 sib8
	sib4 sib8 fa4 sol8
	la4. r
	la4. la4 la8
	la4 do8 sib4 la8
	la2.
	sol4. r4 \repeat volta 2 { do,8
	fa4.~ fa4 fa8
	mi4 fa8 sol4 fa8
	re4. r
	sib'4. sib4 sib8
	la4 sol8 fa4 sol8
	la4.( sol)
	\partial 8*5 fa4. r4 }
}

Paroles = \lyricmode {
	On n'en fi -- ni -- ra donc ja -- mais
	A -- vec ces es -- pèc's de «_boi- scou -- tes_»_!
	On a beau s'en -- fuir en fo -- rêt,
	On en ren -- contr' sur tout's les rou -- tes.
	Sur le boul' -- vard et dans l'mé -- tro,
	Ils font leur poire in -- té -- res -- san -- te_;
	Non, vrai, on n'di -- ra ja -- mais trop_:
	As -- sez d'cett' race en -- va -- his -- san -- te_!
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
