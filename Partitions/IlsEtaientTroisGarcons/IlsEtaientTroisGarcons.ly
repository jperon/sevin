\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4=100
  \time 4/4
  \key do \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do'' {
  \partial 4 sol4
  mi4. re8 mi4 fa
  mi2 r4 sol
  do4. si8 do4 la
  sol2 r4 do,
  la'2 do
  sol4 fa8. mi16 fa4 sol
  mi2 r4 do
  la'2 do
  <<
    {\voiceOne mi4 re8. do16 re4 si
    do2.}
    {\new Voice \voiceTwo sol4 fa8. mi16 fa4 re
    do2.}
  >>
  \bar "|."
}

Paroles = \lyricmode {
  Ils é -- taient trois gar -- çons,
  Ils é -- taient trois gar -- çons,
	Leur chant, leur chant em -- plit ma mai -- son_;
	Leur chant, leur chant em -- plit ma mai -- son.
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
