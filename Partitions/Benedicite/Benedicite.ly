%Compilation:lilypond Benedicite.ly
%Apercu:evince Benedicite.pdf
%Esclaves:timidity -ia Benedicite.midi
\version "2.12.1"
\language "français"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4=110
  \time 3/4
  \key do \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do'' {
	\partial 8 * 3 sol8 sol sol
	do2 sol4
	sol2 sol8 sol
	do4 sol la
	sol2 fa8 mi
	re4 mi sol
	la4 la4. r8
	la4 sol8 fa sol la
	si2 do4
	sol8 mi fa4 sol
	sol2.
	mi4 fa8[( mi]) re4
	do2. \bar "|."
}

Paroles = \lyricmode {
	Bé -- nis -- sez_- nous, Sei -- gneur,
	bé -- nis -- sez ce re -- pas,
	Ceux qui nous le pré -- pa -- rent_;
	Don -- nez le pain du jour
	à ceux qui n'en ont pas,
	Ain -- si soit_- il.
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
