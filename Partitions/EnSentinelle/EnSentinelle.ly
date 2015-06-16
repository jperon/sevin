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
  \tempo 4=48
  \time 4/4
  \key fa \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do'' {
	\partial 8 do8\mf
	do8 sib la sib do4. do8
	re8 mi fa re do4 la8 do
	re8 do mi,8 fa sol4. la8
	sib8 do^\markup{\italic rit.} mi8. re16 do4 r8 la\p
	la2~ la8 r r do
	do2 la8[(\mf sol]) la sib
	do4. do8 sib la sib do
	re4 re8 do re mi fa re
	do8 la fa do sol'4. fa8
	fa2~ fa8 r \bar "||"
	r8. do'16^\markup{\italic {Plus vite}}\ff
	do4 la8 r16 do fa4 r8. la,16
	do4 do8 r r2
	la2^\markup{\italic a Tempo}\pp la2
	la8 sib do re do4.( sib8)
	sib4. r8 la4. do8
	re8 do sib la sol4. r8
	la4.\p sol8 la do mi8. re16
	do2 la8 do re8. do16
	la4 do8. sib16 la4( sol)
	fa4. r8 la4 sib
	do4. r8 la4 do
	fa2 la,4(\pp re
	do4 do,8[ sib'] la4) sol
	\partial 8*7 fa2.\ppp r8 \bar "|."
}

MusiqueAccompagnement = \relative do'' {
	la8
	la8 sol fa sol la4. la8
	sib8 do la sib la4 fa8 la
	sib8 la do, re mi4. fa8
	sol8 la do8. sib16 la4 r8 fa
	fa2~ fa8 r r la8
	la2 fa8[( mi]) fa sol
	la4. la8 sol fa sol la
	sib4 sib8 la sib do re sib
	la8 fa fa do mi4. fa8
	fa2~ fa8 r
	r8. la16 la4 fa8 r16 la la4 r8. fa16
	la4 la8 r r2
	fa2 fa
	fa8 sol la sib la4.( sol8)
	sol4. r8 fa4. la8
	sib8 la sol fa mi4. r8
	fa4. fa8 fa la do8. sib16
	la2( fa8) la sib8. la16
	fa4 la8. sol16 fa4( mi)
	fa4. r8 fa4 sol
	la4. r8 fa4 la
	la2 fa4( sib
	la4 do, fa) mi
	fa2. r8 \bar "|."
}

Paroles = \lyricmode {
	Seul dans le bois dé -- sert, ô frè -- re Scout de Fran -- ce,
	Tu veil -- les en rê -- vant à ton clo -- cher na -- tal_;
	Tout dort_! Tout dort_!
	Tes com -- pa -- gnons, sûrs de ta vi -- gi -- lan -- ce,
	S'é -- veil -- le -- ront dis -- pos à l'ap -- pel ma -- ti -- nal.
	
	Qui vi -- ve_? Ho -- là_! Qui vi -- ve_?
	Rien_! Rien_! nul é -- cho n'ar -- ri -- ve_!
	Et dans l'om -- bre rien ne bruit_:
	Tout re -- po -- se, tout som -- meil -- le_;
	Dor -- mez, les Scouts, car on veil -- le.
	Sen -- ti -- nelle, bon -- ne nuit, bon -- ne nuit_!
	
}

\score{
    \new Staff \with { printPartCombineTexts = ##f } <<
      \set Staff.midiInstrument = "flute"
      \new Voice = "theme" {
	\override Score.PaperColumn #'keep-inside-line = ##t
	\autoBeamOff
	\voiceOne
	\MetriqueArmure
	\MusiqueTheme
      }
      \new Voice = "accompagnement" {
	\override Score.PaperColumn #'keep-inside-line = ##t
	\autoBeamOff
	\voiceTwo
	\MetriqueArmure
	\MusiqueAccompagnement
      }
      \new Lyrics \lyricsto theme {
	\Paroles
      }                       
    >>
\layout{}
\midi{}
}
