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
  \tempo 4=100
  \time 2/4
  \key fa \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
	\partial 4 la
	re4 fa
	la4. sol8
	fa4 sol
	la4 sol8 fa
	mi4. fa8
	sol4 la
	fa4( mi)
	re2
	sib'4. do8
	re4 do8 sib
	re8. la16 la8 la
	la8 r sol8 fa
	mi4. fa8
	la8 sol fa mi
	fa4( sol)
	la4 r
	sib4. do8
	re4 do8 sib
	re8. la16 la8 la
	la8 r sol8 fa8
	mi4. fa8
	la8 sol fa( mi)
	fa4 mi
	re8 \bar "||"
	re8 do sib
	la4. dod8
	mi4 dod8 la
	re4. mi8
	fa4 mi8 re
	dod4. re8
	mi8 la, si dod
	re4 mi
	fa4 r
	sol4. la8
	sib4 la8 sol
	sib8. fa16 fa8 fa
	fa8 r mi8 re
	dod4. re8
	mi8 la, si dod
	re4 mi
	fa4 r
	sol4. la8
	sib4 la8 sol
	sib8. fa16 fa8 fa
	fa8 r mi8 re
	dod4. re8
	mi8 la, si dod
	re4 la
	re4 \bar "||"
}

Paroles = \lyricmode {
	Nous ai -- mons vivre au fond des bois,
	Al -- ler cou -- cher sur la du -- re.
	La fo -- rêt nous dit de ses mil -- le voix,
	Lan -- ce_- toi dans la grande a -- ven -- tu -- re,
	La fo -- rêt nous dit de ses mil -- le voix,
	Lan -- ce_- toi dans la grande a -- ven -- tu -- re.
	
	\italique
	La la la la la la la la la la la,
	La la la la la la la la la la la,
	La la la la la la la la la la,
	La la la la la la la la la la la,
	La la la la la la la la la la,
	La la la la la la la la la la la.
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
