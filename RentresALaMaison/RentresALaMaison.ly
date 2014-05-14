\version "2.16"
\include "italiano.ly"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4.=45
  \time 6/8
  \key fa \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
  \partial 8 do8\mf
  fa8[( sol]) la sol4 sib,8
  sol'8[( la]) sib la4 do8
  do4 la8 re sib la
  sol4.~ sol8 r do\pp^"(écho)"
  do4 la8 do sib la
  sol4.~ sol8 r do,\f
  sib'4 sib8 la4 fa8
  re'4 re8 do4 sib8
  la4 la8 sol[( fa]) sol
  fa4.~ fa8 r la\pp^"(écho)"
  la4 la8 sol[( fa]) sol
  fa4~ fa4 \bar "|."
}

Paroles = \lyricmode {
  Sei -- gneur Jé -- sus, nous vous pri -- ons
  Pour nos jeu -- nes com -- pa -- gnons,
  Pour nos jeu -- nes com -- pa -- gnons,
  Nos frè -- res scouts, tous ceux qui sont
  Ren -- trés à la Mai -- son_;
  Ren -- trés à la Mai -- son.
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
