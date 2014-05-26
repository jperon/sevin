\version "2.16"
\include "italiano.ly"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4=120
  \time 4/4
  \key mib \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

Introduction = \relative do'' {
  \partial 4 sib4
  do4 lab8 fa mib4 re
  fa2 mib4 \bar "||"
}

IntroII = \relative do'' {
  \partial 4 sol4
  mib4 mib8 fa mib4 mib
  re2 mib4
}

IntroIII = \relative do' {
  \partial 4 mib4
  lab,4 do8 lab mib'4 do
  sib2 mib4
}

MusiqueTheme = \relative do'' {
  sol8 sol
  sib4 sib sol sol8 sol
  sib4 sib sol sol
  lab4 lab fa fa
  lab4 lab fa fa
  mib4 mib mib' mib8 re
  re4 do8. do16 sib4 lab8 sol
  do4 lab8 fa mib4 re8. re16
  fa2 mib4 \bar "||"
  sol8^"Refrain" sol
  sib4 sib8 sib sol4 sol
  sib4 sib8 sib sol4 sol8 sol
  lab4 lab8 lab fa4 fa8 fa
  lab4 lab fa2
  mib4 mib8. mib16 mib'4\fermata mib8 re
  re4 do8. do16 sib4 lab8 sol
  do4 lab8 fa mib4 re8. re16
  \set Timing.measureLength = #(ly:make-moment 3 4)
  fa2 mib4 \bar "|."
  \set Timing.measureLength = #(ly:make-moment 4 4)
  do'4^"Fin du dernier refrain" lab8 fa mib4 re8. re16
  fa1
  \set Timing.measureLength = #(ly:make-moment 3 4)
  mib2~ mib8 r8 \bar "|."
}

MusiqueII = \relative do'{
  r4
  r4 mib mib r
  r4 sol mib r
  r4 re fa r
  r4 re fa r
  mib4 mib8[ sol] do4 do8[ sib]
  sib4 lab sol r
  mib4 r sol r
  r4 mib mib mib8 mib
  sol4 sol8 sol mib4 mib
  sol4 sol8 sol mib4 mib8 mib
  fa4 fa8 fa sib4 fa8 fa
  fa4 fa re2
  mib4 mib8. mib16 mib'4\fermata sib8 sib sib4
  do8. lab16 sol4 fa8 mib
  lab4 fa8 do mib4 re8. mib16
  \set Timing.measureLength = #(ly:make-moment 3 4)
  fa2 mib4
  \set Timing.measureLength = #(ly:make-moment 4 4)
  do'4 do8 fa mib4 re8. re16
  <fa lab,>1
  mib2~ mib8 r
}

MusiqueIII = \relative do'{
  r4
  r4 sib mib r
  r4 sib mib r
  r4 sib re r
  r4 sib re r
  mib4 mib sol do8[ sib]
  mib,4 mib8[ fa] sol4 r
  lab,4 r sib4 r
  r4 do mib mib8 mib
  mib4 mib8 mib mib4 mib
  mib4 mib8 mib mib4 mib8 mib
  fa4 sib8 fa re4 re8 re
  fa4 fa re2
  mib4 mib8. mib16 do'4 sol8 sib
  lab4 lab8. lab16 mib4 mib8 mib
  lab4 lab,8 lab sib4 sib8. sib16
  \set Timing.measureLength = #(ly:make-moment 3 4)
  sib2 mib4
  \set Timing.measureLength = #(ly:make-moment 4 4)
  lab <fa lab>8 <fa lab>8 <sol sib>4 <fa sib>8. <fa sib>16
  sib4( do2 sib4)
  <mib, sol>2~ <mib sol>8 r
}

Paroles = \lyricmode {
  Nous con -- nais -- sez_- vous, nous, les Pe -- tits Loups_?
  Con -- nais -- sez_- vous les Pe -- tits Loups_?
  Quand nous pas -- sons, vous a -- vez peur de nous,
  I -- gno -- rant le par -- ler de la Jun -- gle.

  \italique
  Car nous som -- mes les Loups du grand bois fran -- çais,
  Nous fai -- sons tous ef -- fort a -- fin d'ê -- tre prêts_!
  De no -- tre mieux, de pro -- grès en pro -- grès,
  C'est la Loi, no -- tre Loi, de la Jun -- gle_!

  Loi, no -- tre Loi, de la Jun -- gle_!
}

\score{
  \new ChoirStaff <<
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \override Score.PaperColumn #'keep-inside-line = ##t
      {
        \MetriqueArmure\Introduction
        \new Voice = "theme" {
          \autoBeamOff
          \MusiqueTheme
        }
      }
      \new Lyrics \lyricsto theme {
        \Paroles
      }
    >>
    \new Staff \with { printPartCombineTexts = ##f } <<
      \set Staff.midiInstrument = "flute"
      \override Score.PaperColumn #'keep-inside-line = ##t
        \MetriqueArmure
        { << \IntroII \\ \IntroIII >>
        << \autoBeamOff\MusiqueII \\ \autoBeamOff\MusiqueIII >> }
    >>
  >>
  \layout{}
  \midi{}
}

%Apercu:evince *.pdf
%Esclaves:timidity -ig *.midi
