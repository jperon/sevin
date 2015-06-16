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
  \tempo 4.=90
  \time 6/8
  \key sib \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do'' {
	\partial 8 re8
	do4 sib8 la4 sib8
	sol4 sib8 re,4.
	sol4 sib8 re,4.
	sol4 sib8 mib,4 re8
	do8 re mib fa sol la
	do4( sib8) re4 sib8
	la4 sol8 sib4 la8
	sol4. fa4 re'8
	do4 sib8 la4 sib8
	sol4 sib8 re,4.
	sol4 sib8 re,4.
	sol4 sib8 mib,4 re8
	do8 re mib fa sol la
	do4( sib8) re4.~
	re8 re, sol fa do' re
	sib4 r8 fa4\accent fa8-. \bar "||"
	\key fa \major
	do'4-. do8-. do4-. do8-.
	re4-. sib8-. do4-. do8-.
	re4-. re8-. do4.~
	do4 r8 fa,4\accent fa8-.
	do'4-. do8-. do4-. do8-.
	re4-. sib8-. do4-. do8-.
	re4-. re8-. do4.~
	do4 r8 do4 do8
	fa4\accent do8-. do4-. sib8-.
	la4-. sol8-. la4\accent la8-.
	la4-. do8-. do4-. sib8-.
	la4 sol8 fa r la
	do2.
	re4\accent sib8-. sol4-. mi8-.
	fa4.~ fa8 r fa8 \bar "||"
	fa4 fa8 fa[ re] fa
	sib4 sib8 sib fa sib
	re8 do sib re do sib
	fa'2.~
	fa4 r8 r4.
	\bar "||" \break
	\key mib \major
	sib,4.^Refrain do4.
	sol4. fa8 mib fa
	sol2.
	mib4. r
	sib'4. mib
	re4. do8 sol sib
	sib2.
	lab4. r
	fa4. sol
	lab4. sib8 do re
	fa2.
	mib4. re
	re4. do4.~
	do4 si8 do mib re
	do2.
	sib4.~ sib4 r8
	sib4. do4.
	sol4. fa8 mib fa
	sol2.
	mib4. r
	sib'4. mib
	re4. do8 sol sib
	sib2.
	lab4. r
	fa4. sol
	lab4. sib8 do re
	fa2.
	mib4 si8 do re do
	mib4 sol,8-. sib4.~
	sib4 r8 fa sol fa
	mib2. \bar "|."
}

Paroles = \lyricmode {
	Nous mé -- pri -- sons, non sans rai -- sons,
	Les mai -- sons, ces pri -- sons,
	D'où l'on ne peut voir les é -- toi -- les
	Et le beau ciel sans voi -- les.
	Qu'on soit l'é -- té, qu'on soit l'hi -- ver,
	Par temps clair ou cou -- vert,
	Sous no -- tre mu -- rail -- le de toi -- les
	Nous vi -- vons en plein air.
	A -- vec trois fi -- celles
	Que nous li -- ons à nos bâ -- tons,
	Fai -- sons des é -- chelles,
	Des pas -- se -- relles et des mai -- sons_:
	Nul ob -- sta -- cle ne nous gê -- ne
	A -- vec nos bâ -- tons, don -- dai -- ne,
	Non, non, non,
	A -- vec nos bâ -- tons.
	Nous sui -- vons sans ef -- froi
	De nos pieds a -- droits
	Des sen -- tiers de cha -- mois_!
	
	\italique Œil au guet, fi -- gure ou -- ver -- te,
	Jar -- rets nus, dé -- marche a -- ler -- te,
	Sans que rien nous dé -- con -- cer -- te,
	Nous sui -- vons la Ban -- niè -- re ver -- te.
	Che -- va -- liers à tê -- te blon -- de,
	Nous che -- mi -- nons à la ron -- de,
	Et notre â -- me va -- ga -- bon -- de
	Fait de nous des sau -- ve -- teurs,
	Scouts aux grands cœurs_!
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
