\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4.=120
  \time 6/8
  \key fa \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do'' {
  \partial 8 la8
  la4. sol8 la sib
  la4( sol8) fa4 sol8
  la4 sol8 fa4 mi8
  re4 r8 la'4 la8
  la4. r4la8
  la4. sol8 la sib
  la4( sol8) fa4 sol8
  la4 sol8 fa4 mi8
  re4 r8 la'4 la8
  la4 r8 re,4 mi8
  fa4 fa8 fa8 sol fa
  mi4 mi8 re4 mi8
  fa4 fa8 fa8 sol fa
  mi4 mi8 la4 la8
  la4\fermata r8
  \bar "||"

  la4^"Refrain - lent et solennel" la8
  re4. re4 re8
  do4. do4 do8
  sib4. sib4 sib8
  la4 r8 mi8^"A tempo" fa sol
  fa4. sol
  la4 r8 mi8 fa sol
  fa4. sol
  la4 r8mi8 fa sol
  fa4. mi
  re4. la'4 la8
  re4. r4
  \bar "|."
}

Paroles = \lyricmode {
  À l’é -- po -- que ter -- tiai -- re, il y_a -- vait un bar -- bu, \italique É -- sa -- ü_!
  \roman
  Sa barbe traî -- nait par ter -- re, son corps é -- tait ve -- lu, \italique É -- sa -- ü_!
  \roman
  Pour lui, pas be -- soin de cu -- lot -- te,
  De che -- mise ni de re -- din -- go -- te, \italique É -- sa -- ü_!
  \roman

  É -- sa -- ü, É -- sa -- ü, É -- sa -- ü, É -- sa -- ü_! c’est le roi des bar -- bus,
  C’est le roi des poi -- lus, c’est le roi des ve -- lus, É -- sa -- ü_!
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
