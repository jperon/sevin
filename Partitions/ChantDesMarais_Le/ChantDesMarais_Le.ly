\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4=80
  \time 4/4
  \key do \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
  re4 re re fa8[( mi])
  re4. la8 re4 re
  sol4 mi fa re
  mi4 la, re r
  fa4 fa fa la8[ sol]
  fa4. do8 fa4 fa
  sol4 mi fa re
  mi4 la, re8 r
  \bar "||"
  do4^"Refrain"
  la'4. la8 la4 fa4
  sol2 sol8 r mi4
  fa4. fa8 fa4 re
  mi2 mi8 r la,4
  re4 r r la
  re4 r r2
  \bar "|."
}

Paroles = \lyricmode {
	Loin dans l’in -- fi -- ni s’é -- ten -- dent
	De grands prés ma -- ré -- ca -- geux ;
	Pas un seul oi -- seau ne chan -- te
	Dans les ar -- bres secs et creux.

  \italique
	Ô ter -- re de dé -- tres -- se,
	Où nous de -- vons sans ces -- se
	Pio -- cher. Pio -- cher.
}

\score{
  <<
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \transpose re mi
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
