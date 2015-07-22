\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4=130
  \time 4/4
  \key do \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
  \partial 4 re8 re
  sol8. sol16 sol8 sol
  sol8 re si re
  sol2
  r4 sol8 la
  si8. si16 si8 si
  re8 re do si
  la2
  r4 re8 do
  si8. si16 si8 la
  sol8 sol sol sol
  do8. do16 do8 do
  do8 do sol sol
  si8. si16 si8 si
  la8 la la la
  sol2 r4
  \bar "||"
  re8^"Refrain" re
  sol4 sol sol8 re si re
  sol2 r4 sol8 la
  si4 si re8 re do si
  la2 r4 re8 do
  si4 si la8 sol4.
  do4 do do8 do4.
  si4 si la8 la si la
  sol2 r4
  \bar "|."
}

Paroles = \lyricmode {
  Ell’ des -- cend de la mon -- ta -- gne \italique à che -- val,
  \roman
  Ell’ des -- cend de la mon -- ta -- gne \italique à che -- val,
  \roman
  Ell’ des -- cend de la mon -- ta -- gne,
  Ell’ des -- cend de la mon -- ta -- gne,
  Ell’ des -- cend de la mon -- ta -- gne \italique à che -- val.

  \italique
  Sing -- ing I, I, you -- pee you -- pee I_!
  Sing -- ing I, I, you -- pee you -- pee I_!
  Sing -- ing I, I, you -- pee_! I, I, you -- pee_!
  I, I, you -- pee you -- pee I_!
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
