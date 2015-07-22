\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 2=45
  \time 2/2
  \key re \minor
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
  \partial 4 re8 mi
  fa4 sol8 fa mi4 fa8 mi
  re4 la r dod8 re
  mi4 la, dod mi
  re2 r4 re8 mi
  fa4 sol8 fa mi4 fa8 mi
  re4 la r dod8 re
  mi4 sib' la dod,
  re2 r4 fa8 sol
  la4 la sib8 la sol fa
  la4 sol r mi8 fa
  sol4 sol la8 sol fa mi
  sol4 fa r re8 mi
  fa4 sol8 fa mi4 fa8 mi
  re4 la r dod8 re
  mi4 sib'4 la dod,
  re2 r4
  \bar "|."
}

Paroles = \lyricmode {
  Le feu brille et la fo -- rêt pal -- pi -- te,
	No -- tre chef est par -- mi nous ;
	Il nous par -- le des temps hé -- ro -- ï -- ques
	Où les preux lut -- taient pour nous.
	Sur nos tê -- tes, le vent crie et pas -- se,
	À ce souf -- fle les chê -- nes fré -- mis -- sent_:
	Le feu brille et la fo -- rêt pal -- pi -- te,
	No -- tre chef est par -- mi nous.
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
