\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4=130
  \time 2/4
  \key do \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueRefrain = \relative do'' {
  sol4. fa8^"Refrain" mi mi mi mi
  sol4. fa8 mi4 r4
  re4 do re fa
  mi2 do4 r
  sol'4. fa8 mi mi mi mi
  sol4. fa8 mi4 r4
  re4 do re mi
  do2
  \bar "||"
}

MusiqueCouplet = \relative do' {
  sol2^"Couplet" re'2
  do8 re mi fa sol fa mi re
  sol,2 re'2
  do8 re mi fa sol-^ fa mi re
  sol8-^ fa mi re sol4-^ sol-^ sol-^ sol-^
  \bar "|."
}

ParolesRefrain = \lyricmode {
  \italique Oh ! la la, mi -- sère et bran -- le_- bas,
	Voi -- là qu’on dé -- cam -- pe_!
	Oh ! la, la, mi -- sère et bran -- le_- bas,
	Voi -- là qu’on s’en va_!
}

ParolesCouplet = \lyricmode {
  \roman
	Sur l’dos, qui pren -- dra la tente et les cor -- deaux, \italique Oh_!
  \roman
	Qui pren -- dra la tente \italique et les cor -- deaux,
	Et les cor -- deaux, et les cord'…
}

\score{\transpose do re
  <<
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \transpose sol do'
      \new Voice = "theme" {
        \override Score.PaperColumn #'keep-inside-line = ##t
        \MetriqueArmure
        \MusiqueRefrain
        \MusiqueCouplet
      }
    >>
    \new Lyrics \lyricsto theme {
      \ParolesRefrain
      \ParolesCouplet
    }
  >>
  \layout{}
  \midi{}
}
