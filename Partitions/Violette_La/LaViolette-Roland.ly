\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4=120
  \time 2/4
  \key sol \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do'' {
  \partial 4
  si8. la16 | sol8 sol la si | sol8 sol
  si8. la16 | sol8 sol la si | sol4
  si8 si | si8 si si si | si8 si
  re8. do16 | si8 si la sol | la4\fermata
  \bar "||"

  si8.^"Refrain" la16 | sol8 sol la si | sol8 sol
  si8. la16 | sol8 sol la si | sol4\fermata
  \bar "|."
}

Paroles = \lyricmode {
  J'ai un p'tit voy -- age à fai -- re,
	Je ne sais qui le fe -- ra.
	Si je l'dis à l'a -- lou -- et -- te,
	Tout le mon -- de le sau -- ra.

  La vio -- let -- te dou -- ble, dou -- ble,
  La vio -- let -- te dou -- ble -- ra.
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
        \unfoldRepeats \MusiqueTheme
      }
    >>
    \new Lyrics \lyricsto theme {
      \Paroles
    }
  >>
  \midi{}
}
