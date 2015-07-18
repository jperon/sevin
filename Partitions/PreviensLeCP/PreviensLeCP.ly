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
  si4 si8. la16
  sol8 mi re r
  re8 fad la fad
  sol8 la si sol
  si4 si8. la16
  sol8 mi re r
  re8 la' la si
  sol4 r
  \bar "||"
  re'4.^"Refrain" mi8
  re8 si do la
  si4 sol
  re'4. mi8
  re8 si do la
  si4 si8 do
  re4 re
  mi4 do8 si
  la4 la
  re4 r
  re4. mi8
  re8 si do la
  sol4 r
  \bar "|."
}

Paroles = \lyricmode {
	En -- core dans le fos -- sé,
	Le bar -- da sous la char -- ret -- te !
	En -- core dans le fos -- sé ;
	Pré -- viens le C P !

	Ah ! Les scouts de ma pa -- trouil -- le !
	Quand me fi -- ch'ront_- ils la paix ?
	Quand me fi -- ch'ront_- ils,
	Quand me fi -- ch'ront_- ils,
	Quand me fi -- ch'ront_- ils la paix ?
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
