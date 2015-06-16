%Compilation:lilypond EloquenceScoute.ly
%Apercu:evince EloquenceScoute.pdf
%Esclaves:timidity -ia EloquenceScoute.midi
\version "2.12.1"
\language "français"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4=60
  \time 2/4
  \key mib \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do'' {
	sib8 lab16 sol fa mib fa sol
	sib,4 r16 sib mib sol
	sib8 sib sib si si4 do
	lab8 fa16 mib re fad la re
	do8[( sib]) la sol
	fa8 sib16 re fa8 fa,
	do'4 sib8 r
	sib8 fa16 mib re fa sib re
	sib2
	si8 sol16 fa re sol re' re
	re4 do
	do8 lab16 sib do do re^\markup{\italic allarg.} mib
	mib4 sib8 sib16 sib
	do4 re16 re do sib
	mib2 \bar "|."
}

Paroles = \lyricmode {
	Dès qu'ils ont l'ai -- grette au cha -- peau,
	Nos jeu -- nes chefs, pa -- raît_- il, trem -- blent
	Lors -- qu'on les prie \italique ex ab -- rup -- to
	\roman D'ha -- ran -- guer deux cents Scouts en -- sem -- ble.
	Pour vain -- cre cette é -- mo -- ti -- on,
	Pas be -- soin d'i -- dées, mais de phra -- ses,
	Quel -- ques ges -- tes, un brin d'em -- pha -- se,
	Et le mot_: Fé -- dé -- ra -- ti -- on_!
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
