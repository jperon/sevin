\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4=130
  \time 2/4
  \key do \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do'' {
  \partial 8 sol8
  mi8 mi mi mi
  mi4 r
  sol4 mi
  re4 r8 la'
  fa8 fa fa fa
  fa4 r
  la4 fa
  mi4 r8 sol
  mi8 mi mi mi
  mi4 r
  sol4 mi
  re4 r8 re
  re8 mi fa re
  sol4 r8 sol
  mi4 re
  do4 r8
  \bar "|."
}

MusiqueAcc = \relative do' {
  mi8
  do do do do
  do4 r
  mi4 do
  si4 r8 fa'
  re8 re re re
  re4 r
  fa4 re
  do4 r8 mi
  do8 do do do
  do4 r
  mi4 do
  si4 r8 si
  si8 do re si
  mi4 r8 mi
  do4 si
  do4 r8
}

Paroles = \lyricmode {
  \roman Un jour la troupe cam -- pa,
  \italique a a a
  \roman La pluie s'mit à tom -- ber,
  \italique b b b
  \roman L'o -- rage à tout cas -- ser,
  \italique c c c
  \roman Fail -- lit nous i -- non -- der,
  \italique a b c d
}

\score{
  <<
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \new Voice = "theme" {\voiceOne
        \override Score.PaperColumn #'keep-inside-line = ##t
        \MetriqueArmure
        \MusiqueTheme
      }
      \new Voice = "acc" {\voiceTwo
        \override Score.PaperColumn #'keep-inside-line = ##t
        \MetriqueArmure
        \MusiqueAcc
      }
    >>
    \new Lyrics \lyricsto theme {
      \Paroles
    }
  >>
  \layout{}
  \midi{}
}
