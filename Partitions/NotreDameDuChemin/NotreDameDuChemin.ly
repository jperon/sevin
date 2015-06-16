\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4.=60
  \time 6/8
  \key mib \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do'' {
  sib8 sib sib do sib sol
  sol4. fa4 r8
  lab8 lab sib do sib sol
  sol4.~ sol8 r4
  sib8 sib sib do sib do
  re4. re4 r8
  re8 do sol sib re, la'
  sol4. sol8 r4
  lab8 lab lab lab sib do
  do4. sib8 sol\< sib
  mib4.\f mib8 mib re
  re4.~ re4 r8
  do8\< do re\! fa\> mib do
  sib4.\! sol4 r8
  fa8^\markup {\italic scandé} sol lab sol fa8. mib16
  mib4.~ mib8 r4 \bar "|."
}

Paroles = \lyricmode {
  Ô Vier -- ge de Pa -- les -- ti -- ne,
  Toi qui par -- tis au -- tre -- fois,
  Pour voir ta sain -- te cou -- si -- ne,
  Tou -- te seul -- le, par monts et bois.
  Tu con -- nais -- sais bien tes rou -- tes,
  Et ton cœur ne crai -- gnait rien_;
  Ô Ma -- do -- ne des Es -- cou -- tes,
  Mon -- tre_- nous le bon che -- min_!
}

\score{
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \new Voice = "theme" {
	\override Score.PaperColumn #'keep-inside-line = ##t
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
