\version "2.16"
\include "italiano.ly"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4=100
  \time 4/4
  \key re \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
  fad4^"Chœur" mi re\marcato la
  fad'4 mi re\marcato la
  fad'4 mi re\marcato la
  la'4 \times 2/3 {sol4 sol8} fad2
  la4 \times 2/3 {sol4 sol8} fad2
  la4 \times 2/3 {sol4 sol8} fad4~ \times 2/3 {fad4 la8^"Solo"} \bar "||"
  \time 12/8
  re4 re8 dod dod si dod4 re8 la la la
  re8 re re dod si dod re4 re8 la4 la8
  re8 re re dod si dod re4 re8 la4. \bar "||"
  \time 4/4
  fad4 mi re2 \bar "|."
}

Paroles = \lyricmode {
  Ô Chef -- tai -- ne, ô Chef -- tai -- ne, ô Chef -- tai -- ne,
  Où sont vos Loups_? où sont vos Loups_? où sont vos Loups_?
  Ils s'en sont al -- lés par -- mi la fo -- rêt,
  La Jun -- gle les cache à l'œil in -- dis -- cret,
  Et la Loi mau -- dit qui les trou -- ble -- rait,
  Tous mes Loups.
}

\score{
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \new Voice = "theme" {
	\override Score.PaperColumn #'keep-inside-line = ##t
	\autoBeamOff
	\MetriqueArmure
	\MusiqueTheme
      }
      \new Lyrics \lyricsto theme {
	\Paroles
      }                       
    >>
\layout{}
\midi{}
}
