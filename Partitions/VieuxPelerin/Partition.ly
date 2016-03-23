\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4=100
  \time 4/4
  \key fa \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
  \partial 2 r8 re re re | la'2~ la8 fa sol la | fa8 re4.
  r8 re re la' | sol2~ sol8 re fa sol | la2
  r8 re, re re | la'2~ la8 fa sol la | fa8 re4.
  r8 re re la' | sol4. fa8 re4 do | re2
  
  r8 la' la do | re4. la8 do4 la | sol8 re4.
  r8 la' la do | re4. do8 la4 sol | la2
  r8 la re do | la4. fa8 sol4 la | fa8 re4.
  r8 re re la' | sol4. fa8 re4 do | re2 \bar "||"
}

Paroles = \lyricmode {
  Vieux pè -- le -- rin qui va -- ga -- bon -- de,
  Je suis par -- tout un é -- tran -- ger,
  Mais je suis sûr qu'en l'au -- tre mon -- de
  Dieu va m'of -- frir où me lo -- ger.
  
  Je vais là_- bas re -- voir mon pè -- re,
  Fi -- ni pour moi de che -- mi -- ner :
  À l'au -- tre bord de la ri -- viè -- re,
  Mai -- son à moi je vais trou -- ver.
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
      \new Lyrics \lyricsto theme {
        \Paroles
      }
    >>
  >>
  \layout{}
  \midi{}
}
