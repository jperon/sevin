\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4=90
  \time 3/4
  \key do \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
  \partial 4 do8 re
  mi4 mi fa8 re
  la'8[( sol]) sol4 mi8 sol
  sol4 fa sol8[( fa])
  mi4. r8 do re
  mi4 mi fa8 re
  la'8[( sol]) sol4 mi8 sol
  sol4 fa sol8[( fa])
  mi4. r8 sol mi
  mi8 re re4 la'8 fa
  fa8 mi mi4 \breathe sol8 mi
  mi8 re re4 la'8 fa
  fa8 mi mi4 \breathe do8 re
  mi4 mi fa8 re
  la'8[( sol]) sol4 mi8 sol
  sol4 fa sol8 fa
  mi2
  \bar "|."
}

Paroles = \lyricmode {
  As-tu com -- pté les é -- toi -- les
	Et les as -- tres ra -- di -- eux,
	Dé -- ploy -- ant aux nuits sans voi -- le
	Leur cor -- tège dans les cieux_?
	Dieu qui leur don -- na
	La vie et l’é -- clat,
	Dieu qui leur fi -- xa
	La course et le pas,
	Sait aus -- si quel est leur nom -- bre
	Et ne les ou -- bli -- e pas.
}

\score{
  <<
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \new Voice = "theme" {
        \override Score.PaperColumn #'keep-inside-line = ##t
        \MetriqueArmure
        \MusiqueTheme
      }
    >>
    \new Lyrics \lyricsto theme {
      \Paroles
    }
  >>
  \layout{}
  \midi{}
}
