\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4.=120
  \time 6/8
  \key sol \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
  \partial 4. re4 re8
  sol4 sol8 si4 la8
  sol4. sol4 la8
  si4 si8 do4 la8
  si4 r8 re4.
  si4 r8 re,4 re8
  sol4 sol8 si4 la8
  sol4. sol4 la8
  si4 si8 do4 la8
  si4 r8 re4.
  si4 r8 sol4 sol8
  do2.
  r4. do4 do8
  si2.
  r4. si4 si8
  la4 si8 do4 la8
  sol4 la8 si4 sol8
  fad4 sol8 la4 fad8
  sol4 r8
  \bar "||"
  sol8^"Refrain" sol sol
  la4 re,8 re4 re8
  re4 r8 la' la la
  si4 sol8 sol4 sol8
  sol4 r8 si8 si si
  do4 la8 la4 la8
  si4 sol8 sol4 sol8
  la4 re,8 mi4 fad8
  sol4.
  \bar "|."
}

Paroles = \lyricmode {
  Ma mè -- re qui m’a nour -- rie
  N’a ja -- mais con -- nu mon nom, \italique O -- hé_!
  \roman
  Ma mè -- re qui m’a nour -- rie
  N’a ja -- mais con -- nu mon nom, \italique O -- hé_!
  On m’ap -- pelle,
  On m’ap -- pelle,
  On m’ap -- pel -- le
  \roman Fleur d’é -- pi -- ne,
  Fleur de ro -- se, c’est mon nom_!

  Tra, la, la, la_! la, la, la, la_!
  Tra, la, la, la_! la, la, la, la_!
  Tra, la, la, la_! la, la, la, la_! la, la, la, la_! la, la, la, la_!
  O -- hé_!
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
