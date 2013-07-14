%Compilation:lilypond .ly
%Apercu:evince .pdf
%Esclaves:timidity -ia .midi
\version "2.12.1"
\include "italiano.ly"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4.=80
  \time 6/8
  \key lab \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do'' {
	do8 reb mib mib4 reb8
	do4.( mib4) reb8
	do4 sib8 lab fa4
	mib4.~ mib4 mib16 mib
	fa4. lab4 lab8
	sib4.( do4) do8
	sib4 lab8 fa4 lab8
	sib4.~ sib4 do8
	mib4 mib8 fa4 fa8
	mib4.( do4) sib8
	lab8 sib do lab fa4
	mib4.~ mib4 mib8
	lab4 lab8 lab[ sib] do
	sib4. do
	lab4.~ lab4 mib8-\markup{\italic {En écho, sifflé ou bouche fermée}}
	lab4 lab8 lab[ sib do]
	sib4. do
	lab4.~ lab4 r8
}

PremierCouplet = \lyricmode {\set stanza = #"1."
	Nous vou -- lons fuir là_- haut,
	Loin de la ville hu -- maine,
	Et dres -- ser no -- tre tente
	Au flanc des monts ai -- més_;
	La na -- ture y se -- ra
	notre im -- men -- se do -- mai -- ne
	Aux pas des pro -- fa -- nes fer -- mé.
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
	\PremierCouplet
      }              
    >>
\layout{}
\midi{}
}
