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
  \tempo 2.=60
  \time 3/4
  \key sol \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
	\partial 4 re4^Solo
	si'4 lad si
	mi4 re do
	fad,2.
	fad4 r re
	do'4 si do
	fad4 mi do
	si2.~
	si4 r re,
	si'4 lad si
	mi4 re si
	si2.
	la4 r la
	la4 lad si
	do4 dod mi
	re2.~
	re4 r re \bar "||"
	\key sib \major
	re4 fa, sol
	fa4 do' sib
	mib2.
	la,4 r mib'
	mib fa, sol
	fa do' sib
	re2.~
	re4 r re \bar "||"
	\key re \major
	re4 dod re
	re4 la fad
	dod'2.~
	dod4 r si
	si4 la sold
	la4 si dod
	re2.~
	re4 r si^Chœur \bar "||"
	\key sol \major
	re4 r si
	la4 r sol
	re2.
	re4 sol si
	re2.(
	mi2.)
	fad,2.~
	fad4 r do'
	mi4 r do
	la4 r fad
	re2.
	re4 fad la
	re2.(
	mi2.)
	si2.~
	si4 r si
	re4 r si
	la4 r sol
	re2.
	re4 sol si
	re2.
	red2.
	mi2.~
	mi4 r si
	do4 r si
	do4 r la
	re4 r dod
	re4 r sol,
	fad4 r re'
	re4 r fad,
	sol4 r re'
	re4 r si
	do4 r si
	do4 r la
	re4 r dod
	re4 r sol,
	fad4 r re'
	fad,4 r re'
	\partial 2 <sol, sol'>4 r \bar "|."
}

Paroles = \lyricmode {
	À l'om -- bre de la sa -- pi -- niè -- re,
	Le camp va pou -- voir s'ins -- tal -- ler,
	Sor -- tez la char -- rett' de l'or -- niè -- re,
	Hâ -- tez_- vous de la dé -- bal -- ler.
	À tra -- vail -- ler l'on vous in -- vi -- te,
	Et si vous man -- quez trop d'en -- train,
	Re -- tour -- nez en cher -- cher bien vite…
	En par -- tant par le pre -- mier train_!
	
	\italique Quinz' jours de cam -- pe -- ment,
	C'est un' bonn' cho -- se_:
	Ça fait voir jo -- li -- ment
	La vie en ro -- se.
	Ri -- ons à tout mo -- ment,
	Du plus p'tit au plus grand.
	As -- sis en rond sur nos ta -- lons,
	Nous re -- di -- sons nos p'tit's chan -- sons
	Tout l'mond' trouv' ça très bon, au fond_!
	Tout l'mond' trouv' ça très bon_!
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
