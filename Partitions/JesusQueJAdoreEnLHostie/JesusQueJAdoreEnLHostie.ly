\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4.=60
  \time 6/8
  \key fa \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
  \partial 4. do4.\p
  la'4. fa8[( sol]) la
  sib4.~ sib8 la sol
  fa4. mi4 r8
  do'4. fa,8[( sol]) la
  la4 la8 la[( sol]) fa
  fa4 r8 mi4.
  la8 la la la sol mi
  sol4( fa8) la la la
  re4. re8[(\< do]) si\!
  re4( do8) do do do
  do4. do8[( sib]) la
  sol4.( re')
  do4. do,
  la'4. fa8[( sol]) la
  sib4.~ sib8 la sol
  fa4. mi4 r8
  do'4. fa,8[( sol]) la
  la4^\markup {\italic rit.} la8 la[( sol]) fa
  fa4 r8 \bar "|."
}

Paroles = \lyricmode {
  Jé -- sus, que j'a -- dore en l'Hos -- ti -- e,
  C'est toi, mon Dieu, que je re -- çois_!
  Rends_- moi fier de cet -- te Foi
  Que je pré -- fère à ma vi -- e,
  Que je pré -- fère à ma vi -- e,
  \markup {\smallCaps Jé} -- \markup {\smallCaps sus,}
  que j'a -- dore en l'Hos -- ti -- e,
  C'est toi, mon Dieu, que je re -- çois_!
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
