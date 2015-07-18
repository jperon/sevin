\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4.=70
  \time 6/8
  \key do \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do'' {
  sol4 sol8 la4 sol8
  mi4 mi8 mi[( re]) mi
  fa4 fa8 sol4 sol8
  mi2.
  sol4 sol8 la4 sol8
  mi4 mi8 mi[( re]) mi
  fa4 fa8 sol4 sol8
  mi2.
  do'4 do8 si4 la8
  la4 sol8 sol4.
  la4 la8 la[( sol]) fa
  fa4 mi8 mi4.
  \bar "||"
  \repeat volta 2 {
    sol4^"Refrain" sol8 sol4 sol8
    do4 do8 do4 do8
    re4 re8 si[( la]) si
    do2.
  }
}

Paroles = \lyricmode {
  Chante et  dan -- se la Bo -- hè -- me,
  \italique fa -- ria, fa -- ria, ho !
  \roman
	Vole et campe où Dieu la mè -- ne,
  \italique fa -- ria, fa -- ria, ho !
  \roman
	Sans sou -- ci, au grand so -- leil,
	Cou -- le des jours sans pa -- reils.
  \italique Fa -- ria, fa -- ria, fa -- ria, fa -- ria, fa -- ria, fa -- ria, ho !
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
}

\score{
  <<
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
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
