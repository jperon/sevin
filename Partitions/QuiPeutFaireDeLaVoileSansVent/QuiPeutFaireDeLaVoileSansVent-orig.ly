\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4.=40
  \time 12/8
  \key re \minor
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
  re4 mi8 fa8. mi16 re8 la'4 la8 la4.
  sib4 do8 re do sib la4. la4.
  sol4 la8 sib la sol fa4 fa8 re4.
  mi8. fa16 mi8 la,4 dod8 re4. re4.
  \bar "|."
}

Paroles = \lyricmode {
  Vem kan se -- gla fö -- ru -- tan vind_?
	Vem kan ro u -- tan å -- ror_?
	Vem kan ski -- ljas från vän -- nen sin
	U -- tan att fäl -- la tå -- rar_?
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
        \MusiqueTheme \MusiqueTheme
      }
    >>
    \new Lyrics \lyricsto theme {
      \Paroles \Paroles
    }
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \new Voice = "acc" {
        \override Score.PaperColumn #'keep-inside-line = ##t
        \MetriqueArmure
        s1.*4 s1. \MusiqueTheme
      }
    >>
    \new Lyrics \lyricsto acc {
      \Paroles
    }
  >>
  \midi{}
}
