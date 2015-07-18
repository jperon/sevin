\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4=112
  \time 2/4
  \key mib \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do'' {
  \partial 8 sib8
  mib4 re8 do
  sib4. sib8
  do8 sib do re
  mib4 sib8 sib
  do8 sib lab sol
  sib4 sol
  fa4 sib8. sib16
  sib4 r8 sib
  sol8 sib sib sib
  do8 sib sib sib
  sol8 sib sib sib
  do8 sib sib sib
  mib4 fa
  sol8. mib16 mib8 mib
  fa4 re
  mib4.
  \bar "|."
}

MusiqueAccI = \relative do''{
  \partial 8 sib8
  sol4 lab8 lab
  sol4. sol8
  lab8 sol lab lab
  sol4 sol8 sol
  lab8 sol fa mib
  fa4 mib
  fa re8. re16
  re4 r8 sib'8
  sol8 sib sib sib
  do8 sib sib lab
  sol8 fa fa fa
  mib8 fa sol lab
  sib4 sib
  sib8. do16 do8 sib
  lab4 sib
  sol4.
}

MusiqueAccII = \relative do''{
  \partial 8 sib8
  mib,4 mib8 mib
  mib4. mib8
  lab8 sol lab fa
  mib4 sol8 mib
  lab8 sol fa mib
  re4 mib
  fa4 sib,8. sib16
  sib4 r8 sib
  mib8 sol sol sol
  lab8 sol sol fa
  mib8 re re re
  do8 re mib fa
  sol4 fa
  mib8. do16 do8 do
  fa4 sib,
  mib4.
}

Paroles = \lyricmode {
  Ja -- dis, pe -- tit loup,
	Tu pro -- met -- tais de fai -- re
	Par jour un plai -- sir à quel -- qu'un,
	L'as_- tu fait ?
	Sou -- vent la chef -- taine, dans tes yeux,
	Li -- sait le dé -- sir gé -- né -- reux
	De l'i -- mi -- ter en fai -- sant \italique « de ton mieux ».
}

\score{
  \new ChoirStaff
  <<
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \new Voice = "theme" {
        \override Score.PaperColumn #'keep-inside-line = ##t
        \MetriqueArmure
        \MusiqueTheme
      }
      \new Lyrics \lyricsto theme {
        \Paroles
      }
    >>
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \new Voice = "acc1" {\voiceOne
        \override Score.PaperColumn #'keep-inside-line = ##t
        \MetriqueArmure
        \MusiqueAccI
      }
      \new Voice = "acc2" {\voiceTwo
        \override Score.PaperColumn #'keep-inside-line = ##t
        \MetriqueArmure
        \MusiqueAccII
      }
    >>
  >>
  \layout{}
  \midi{}
}
