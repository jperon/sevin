\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4=120
  \time 4/4
  \key fa \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
  do4. do8 re4 mi
  fa2 do4 r8 la'
  la4 sol8. fa16 sol4 fa8. mi16
  fa4 r2.
  do4. do8 re4 mi
  fa2 do4 r8 la'
  la4 sol8. fa16 sol4 fa8. mi16
  fa4 r2.
  \bar "||"
  la4^"Refrain" la8. la16 sib4 la
  fa2 do4 r
  \repeat volta 2 {
    fa2 do4 la'
    sol2 la4. sol8
    fa4 r2.
  }
}

Paroles = \lyricmode {
  Sou -- ve -- nirs qui pas -- sent,
	A -- dieu l’é -- cole et l’a -- te -- lier,
	Le camp les rem -- pla -- ce
	A -- vec ses feux à la veil -- lée.

	Ne tour -- ne pas la tê -- te,
	Un scout re -- garde en a -- vant.
}

\score{
  <<
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \transpose do re
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
}
\score{
  <<
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \transpose do re
      \new Voice = "theme" {
        \override Score.PaperColumn #'keep-inside-line = ##t
        \MetriqueArmure
        \unfoldRepeats{\MusiqueTheme}
      }
    >>
    \new Lyrics \lyricsto theme {
      \Paroles
    }
  >>
  \midi{}
}
