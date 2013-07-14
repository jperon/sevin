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
  \key sib \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
	\partial 4. re4 re8
	sol4 sol8 fa4 mi8
	re4. re4 re8
	sol4 sol8 fa4 mi8
	re4. re4 re8
	sib'4 la8 sol4 sib8
	la4 la8 la4 la8
	sol4 sol8 fa4 sol8
	la4. la4 la8
	sol4 sol8 fa4 sol8
	la4. la4 re,8
	fa4.( mi)
	re4 r8 re4 re8
	re'4 re8 la4 la8
	sib4. re,4 re8
	re'4 re8 la4 la8
	sib4. sol4 sib8
	la4 sol8 fa4 mi8
	re4 re8 re4 re8
	re'4 do8 sib4 do8
	re4. re,4 re8
	re'4 do8 sib4 do8
	re4. la4^\markup{\italic "rall."} do8
	sib4.( la)
	\partial 4. sol4 r8 \bar "|."
}

Paroles = \lyricmode {
	C'est dans un vieux ma -- nu -- scrit
	Que j'ai trou -- vé ce ré -- cit
	Qui ne man -- que pas de char -- me.
	Il se conte en un mo -- ment_:
	Il s'a -- git tout sim -- ple -- ment
	D'u -- ne lar -- me.
	Quand Jé -- sus mou -- rut pour nous,
	No -- tre Dame à ses ge -- noux
	Res -- sen -- tit bien des a -- lar -- mes,
	Et voy -- ant son cœur per -- cé,
	Sans nul doute elle a ver -- sé
	Bien des lar -- mes.
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
