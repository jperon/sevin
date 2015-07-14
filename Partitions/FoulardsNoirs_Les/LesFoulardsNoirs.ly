%Compilation:lilypond LesFoulardsNoirs.ly
%Apercu:evince LesFoulardsNoirs.pdf
%Esclaves:timidity -ia LesFoulardsNoirs.midi
\version "2.12.1"
\language "français"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4=110
  \time 4/4
  \key lab \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
	\partial 4 do8. reb16
	mib4 mib4~ mib8 mib fa8. sol16
	lab4 do2 do8. sib16
	lab4 fa2\marcato lab4
	mib2~ mib8 r do8. reb16
	mib4 mib4~ mib8 mib fa8. sol16
	lab4 do2 do8. do16
	sib4 fa sol lab
	sib2~ sib4 r \bar "||"
	mib,4 mib2 fa8. sol16
	lab4 do2 do4
	reb4 lab2\marcato sib4
	do2~ do8 r lab8. sib16
	do4 do do8.[ lab16] sib8. lab16
	fa2 mib8 r lab8. sib16
	do4 lab2\marcato sib4
	\partial 4*3 lab2~ lab4 \bar "|."
}

Paroles = \lyricmode {
	Chaus -- ses gri -- ses, che -- mi -- se gri -- se,
	É -- pris d'un grave en -- train,
	À tra -- vers bois, mal -- gré la bi -- se,
	Ils s'en vont, co -- gnée en main.
	
	\italique Rou -- tiers de lé -- gen -- de,
	Ils vont sans tam_- tam_:
	C'est l'É -- qui -- pe de Cha -- ma -- ran -- de,
	Les Tra -- vail -- leurs de Cham'.
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
