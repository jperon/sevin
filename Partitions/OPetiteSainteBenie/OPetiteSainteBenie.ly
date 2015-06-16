\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4=70
  \time 3/4
  \key fa \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do'' {
  \partial 8 la8\p^"Très modéré et lié"
  la8 sol fa sol la sib
  \time 2/4 sol4. la8
  \time 3/4 la8\< sol fa sol la sib\!
  do4. do8\> sib la
  sol4.\! \bar "'" fa8\> re fa
  sol2\! r8 \bar "||" do8\mf^"Refrain"
  do8 do re re fa re
  \time 4/4 do8 la la sol la sib do la
  \time 3/4 sol4.\> \bar "'" sol8\< la la16 la
  fa4\< fa8\! fa sib sib
  sol4. \bar "'" sol8 do do16 do
  \time 4/4 re4^"rall." do8 \bar "'" la8 fa4 sol
  \time 3/4 fa4. r4 \bar "|."
}

Paroles = \lyricmode {
  Ô Pe -- ti -- te Sain -- te bé -- nie,
  La Trou -- pe t'a don -- né son cœur,
  Et t'a choi -- sie
  Pour gran -- de sœur.
  
  \italique
  Toi qui vou -- lus pas -- ser ton Ciel
  À fai -- re du bien sur la terre,
  Vois tes pe -- tits frè -- res
  À ton au -- tel,
  Vois tes pe -- tits frè -- res
  À ton au -- tel.
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
