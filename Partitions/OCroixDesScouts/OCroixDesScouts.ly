\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4=110
  \time 2/4
  \key fa \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

Couplet = \relative do' {
  do4 | fa4. fa8 | mi fa sol fa | la4 sol~ | sol8 r
  sol4 | sol4. mi8 | do sol' sol sol | fa8 do' do do | do8 r
  do,4 | fa4. fa8 | mi fa sol fa | la4 sol~ | sol8 r
  sol4 | sol4. mi8 | do sol' sol sol | fa8 <la do> <la do> <la do> | <la do>8 r
  \bar "||"
}

Refrain = \relative do'' {
  do8[(^"Refrain" sib]) | la8 la la4~ | la8 la sol la | do4 sib~ | sib8 r
  sib8[( la]) | sol8 sol sol4~ | sol8 do do do | la2~ | la8 r
  do8[( sib]) | la8 la la4~ | la8 la sol la | do4 sib r
  sib8[( la]) | sol8 sol sol4~ | sol8 do do do | fa,2~ | fa8 r
  \bar "|."
}

Paroles = \lyricmode {
  Quand il par -- tait pour la croi -- sa -- de,
  Pour dé -- li -- vrer le saint tom -- beau, le saint tom -- beau,
  Le che -- va -- lier, fier sans bra -- va -- de,
  A -- vait la croix pour son dra -- peau, pour son dra -- peau.

  Ô croix des scouts, croix glo -- ri -- eu -- se,
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
        \partial 4
        \Couplet \Refrain
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
        \partial 4
        \Couplet \Refrain \Couplet
        <<
          {\Refrain \Couplet}
          {\Couplet \Refrain}
        >>
      }
    >>
    \new Lyrics \lyricsto theme {
      \Paroles
    }
  >>
  \midi{}
}

