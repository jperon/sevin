\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4=90
  \time 2/4
  \key fa \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

CoupletTheme = \relative do' {
  \partial 4 do8 do
  fa8 fa mi re16 do
  \time 3/4
  fa4 fa sol8 la
  sol4 do do,8 do
  \time 2/4
  fa8 fa sol sib16 la
  \time 3/4
  do4 la sib8 la
  do4 do la8 la
  \time 2/4
  sol8 mi16 fa sol8 do
  \time 3/4
  re2 la8 do
  \times 2/3 {fa,8 re fa} sol2
  \bar "||" \time 2/4
  fa4
}

RefrainTheme = \relative do'{
  r8.^"Refrain − très large" do'16\ff
  do8. do16 do8. do16
  do2~
  do4^"A tempo" la8 sib
  la8 sol sol la
  sol8 fa re mi16 fa
  sol8 sol la sib
  la4 r8 do
  fa2
  la,8^"En élargissant" do fa, la
  sol2\>
  fa2\!
  \bar "|."
}

RefrainAcc = \relative do'{
  r8. do'16
  la8. sol16 fa8. mi16
  fa2~
  fa4 la8 sib
  la8 sol sol la
  sol8 fa re mi16 fa
  sol8 mi fa re
  do4 r8 la'
  la2
  fa8 fa do do
  mi2
  fa2
}

Paroles = \lyricmode {
  Elle est là de -- vant ta mai -- son,
	Comme une a -- mi -- e,
	Et pen -- dant la bel -- le sai -- son,
	Tou -- te fleu -- ri -- e,
	El -- le fuit jus -- qu’à l’ho -- ri -- zon
	D’u -- ne fuite in -- fi -- ni -- e.

	O -- hé gar -- çon, gar -- çon !
	Toi qui cher -- ches, toi qui dou -- tes,
	Prê -- te l’o -- reille à ma chan -- son :
	En -- tends l’ap -- pel de la Rou -- te !
}

\score{
  <<
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \new Voice = "theme" {
        \override Score.PaperColumn #'keep-inside-line = ##t
        \MetriqueArmure
        \CoupletTheme
        <<
          {\voiceOne\RefrainTheme}
          \new Voice {\voiceTwo\RefrainAcc}
        >>
      }
    >>
    \new Lyrics \lyricsto theme {
      \Paroles
    }
  >>
  \layout{}
  \midi{}
}
