\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4=140
  \time 4/4
  \key do \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueRefrain = \relative do'' {
  sol4.^"Refrain" fa8 mi mi mi mi
  sol4. fa8 mi4 r4
  re4 do re fa
  mi2 do4 r
  sol'4. fa8 mi mi mi mi
  sol4. fa8 mi4 r4
  re4 do re mi
  do2 r
  \bar "||"
}

MusiqueCouplet = \relative do' {
  sol2^"Couplet" re'2
  do8 re mi fa sol fa mi re
  sol,2( re'2)
  do8 re mi fa sol fa mi re
  \time 2/4
  sol8 fa mi re sol4 sol sol sol
  \bar "|."
}

ParolesRefrain = \lyricmode {
  Oh ! la, la, mi -- sère et bran -- le_- bas !
	Voi -- là qu’on dé -- cam -- pe,
	Oh ! la, la, mi -- sère et bran -- le_- bas !
	Voi -- là qu’on s’en va.
}

ParolesCouplet = \lyricmode {
	Sur l’dos, qui pren -- dra la tente et les cor -- deaux,
	Qui pren -- dra la pelle \italique et les mar -- teaux,
	Et les mar -- teaux, et les mart… ?
}

\score{
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
