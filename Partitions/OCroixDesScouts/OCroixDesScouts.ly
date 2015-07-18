\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4=100
  \time 4/4
  \key fa \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
  \partial 4 do4
  fa4. fa8 mi8. fa16 sol8. fa16
  la4 sol r sol
  sol4. mi8 do8. sol'16 sol8. sol16
  fa2 r4 do4
  fa4. fa8 mi8. fa16 sol8. fa16
  la4 sol r sol
  sol4. mi8 do8. sol'16 sol8. sol16
  fa2 r4 \bar "||" do'8[(^"Refrain" sib])
  la8 la la4. la8 sol la
  do4 sib r sib8[( la])
  sol8 sol sol4. do8 do do
  la2 r4 do8[( sib])
  la8 la la4. la8 sol la
  do4 sib r sib8[( la])
  sol8 sol sol4. do8 do do
  fa,2 r4
  \bar "|."
}

Paroles = \lyricmode {
  Quand il par -- tait pour la croi -- sa -- de,
  Pour dé -- li -- vrer le saint tom -- beau,
  Le che -- va -- lier, fier sans bra -- va -- de,
  A -- vait la croix pour son dra -- peau.

  Ô Croix des scouts, Croix glo -- ri -- eu -- se,
	Croix des hé -- ros des an -- ciens jours,
	À l'â -- me haute et gé -- né -- reu -- se,
	Tu res -- te -- ras chè -- re tou -- jours.
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
