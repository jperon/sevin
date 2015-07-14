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
  \tempo 4=60
  \time 2/4
  \key fa \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
	r8. fa16 fa8 la
	la8. la16 sol8 fa
	la8. la16 sol8. fa16
	sol4 r
	r8. fa16 fa8 la
	la8. la16 sol8 fa
	\times 2/3 {
		la4 la8 sol8 fa[( sol])
	}
	fa2
	r8. fa16 fa8 do'
	do8. do16 re8. re16
	sib16[( la]) sol sib la8 sol16[( fa])
	sol2
	r8. fa16 fa8. do'16
	do8. do16 re8. re16
	la8. la16 sol8 fa
	do'4\fermata r8 do^Refrain
	re8 mi16 mi re8 do
	re8 mi16 mi re8 do
	do8 do16 do do8 sib16 la
	do4\fermata la16 la la la
	la8. sol16 sol8 la
	fa8. re16 re8 re
	fa4 sol8[(^\markup{\italic rall.} fa16 sol])
	<fa la>4 r \bar"|."
}

Paroles = \lyricmode {
	Lors -- que s'é -- tei -- gnait la lu -- mière
	Vers le cou -- chant,
	Vous a -- vez dit vo -- tre pri -- ère,
	Chan -- té vos chants.
	Et main -- te -- nant, com -- me des hom -- mes
	Et des sol -- dats,
	Vous al -- lez fai -- re de bons sommes,
	Sans lits ni draps.
	
	\italique Sous la tente a -- bri,
	Dor -- mez, les a -- mis,
	Dor -- mez, frè -- res scouts, sans ef -- frois,
	Car il n'y a pas de loups au bois,
	Li -- re lon la, lon la_!
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
