%Compilation:lilypond IlEtaitUneCharrette.ly
%Apercu:evince IlEtaitUneCharrette.pdf
%Esclaves:timidity -ia IlEtaitUneCharrette.midi
\version "2.12.1"
\include "italiano.ly"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4=120
  \time 4/4
  \key sol \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
	\partial 4*3 r8 re sol4 \times 2/3 { la8 sol la}
	si4 sol8 r la4 la8. si16
	la4 r8 sol8 sol4 \times 2/3 { la8 sol la}
	si4 sol8 r la4 la8. si16
	la16 r si8 sol si sol si sol si
	la8. r16 la8 la16 la la8 la sol la
	si16 sol si8 sol si sol si sol si
	re,8. r16 la'8 la16 la la8 la sol la
	\partial 4 sol4 \bar "|."
}

Paroles = \lyricmode {
	Il é -- tait un' char -- ret -- te,
	Ti -- rez, les gas_!
	Il é -- tait un' char -- ret -- te,
	Ti -- rez, les gas_!
	Qui n'a -- vait ja -- mais voy -- a -- gé,
	Ti -- rez, les gas_! sur les fi -- cel -- les,
	Qui n'a -- vait ja -- mais voy -- a -- gé,
	Ti -- rez, les gas_! Ça va mar -- cher_!
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
