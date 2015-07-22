\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4=110
  \time 2/4
  \key fa \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

I = \relative do' {
  \partial 8*3
  fa8 fa^"Soliste" mi | re8 la' la sol | la8
  fa8^"Chœur" fa mi | re8 la' la sol | la8 r
  la8^"Soliste" sol | la8 sib do[( sib]) | la4
  la8^"Chœur" sol | la8 sib do[( sib]) | la4
  la8^"Soliste" sol | la8 sib do[( sib]) | la4
  la8^"Chœur" sol | la8 sib do[( sib]) | la4

  \repeat volta 2 {
    la8^"Tous" la | la8 la \times 2/3 {la8 sol fa} | sol8 sol
    sol8 sol | sol8 la fa[( mi]) | re4
  }
}

ParolesI = \lyricmode {
  Ma poul’ n’a plus qu’vingt_- neuf pous -- sins,
  \italique
  Ma poul’ n’a plus qu’vingt_- neuf pous -- sins,
  \roman
  Elle en a -- vait tren -- te,
  \italique
  Elle en a -- vait tren -- te,
  \roman
  La moi -- tié d’soi -- xan -- te_!
  \italique
  La moi -- tié d’soi -- xan -- te_!

  \roman
  Al -- lon -- geons la jam -- be, la jam -- be,
  Car la route est lon -- gue_!
}

\score{
  <<
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \new Voice = "theme" {
        \override Score.PaperColumn #'keep-inside-line = ##t
        \MetriqueArmure
        \I
      }
    >>
    \new Lyrics \lyricsto theme {
      \ParolesI
    }
  >>
  \layout{}
}

\score{
  <<
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \new Voice = "theme" {
        \override Score.PaperColumn #'keep-inside-line = ##t
        \MetriqueArmure
        \unfoldRepeats \I
      }
    >>
    \new Lyrics \lyricsto theme {
      \ParolesI
    }
  >>
  \midi{}
}
