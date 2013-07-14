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
  \key mib \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
	\partial 4. mib4\p sol8
	sol2.~
	sol8 lab sol fa mib fa
	sol8 sol sol fa4 sib,8
	mib2.~
	mib4. mib4 sol8
	sol2.~
	sol8 lab sol fa mib fa
	sol8 sol sol fa4 sib,8
	mib2.~
	mib4. sol4 lab8
	sib2.~
	sib8 sib sib sol sib lab
	sol8 fa fa sol8[( fa8.]) mib16
	fa2.~
	fa4. fa4\mf fa8
	do'2.~
	do8 do do do sib lab
	sib8 lab sol sib8[( lab8.]) sol16
	sib2.~
	sib4 r8 \bar "" mib,4^Refrain sib'8
	sib2.~
	sib8 do sib lab sol fa
	mib4 sib8 mib4\accent mib8
	fa8 fa fa mib fa sol
	fa8 sol mib fa4.~
	fa2.~
	fa4. sib,8 mib\accent sol
	sib2.~
	sib8 do sib lab sol fa
	mib4. sib4 r8\fermata
	mib4^\markup{\italic rall.} sol8 fa mib fa
	\partial 4. mib4. \bar "|."
}

Paroles = \lyricmode {
	Un ray -- on tremble aux ci -- mes so -- no -- res
	Des grands or -- meaux,
	On en -- tend des ga -- zouil -- lis d'au -- ro -- res
	Sous les ra -- meaux_;
	Dans le ciel, c'est l'a -- vance é -- cla -- tan -- te
	Du so -- leil d'or.
	Ça, cam -- peur_! al -- lons, hors de la ten -- te,
	Au son du cor_!
	Lè -- ve_- toi_! en -- core u -- ne jour -- né -- e_!
	Et rends grâce à Dieu qui l'a don -- né -- e,
	Mon gas_!
	Dans le mi -- tan
	De la ver -- te clai -- riè -- re,
	La Pri -- è -- re
	T'attend.
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
