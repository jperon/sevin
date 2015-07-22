\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 2=50
  \time 4/2
  \key re \minor
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
  fa4^"Refrain" mi8 fa sol4 la8 sol
  fa8 fa mi fa sol2
  fa4 mi8 re do4 mi
  re2. r4
  fa4 mi8 fa sol4 la8 sol
  fa8 fa mi fa sol2
  fa4 mi8 re mi4 fa
  mi2. r8
  la8^"Couplet"
  \bar "||"
  \time 12/8 \tempo 4.=60
  re,4 mi8 fa4 la8
  sol4 fa8 la4 la8
  re,4 mi8 fa4 la8
  sib4 sol8 la4 \breathe la8
  re,4 fa8 la4 re8
  re4 la8 sib4 sol8
  fa4 fa8 mi4 re8
  fa4 fa8 mi4\fermata \breathe la8
  re,4 mi8 fa4 la8
  sol4 fa8 la4 la8
  re,4 mi8 fa4 la8
  sib4 sol8 la4 \breathe la8
  re,4 fa8 la4 re8
  re4 la8 sib4 sol8
  fa4 fa8 mi4 re8
  re4 dod8 re4.
  \bar "|."
}

Paroles = \lyricmode {
  Mon an -- ge blond,
  Con -- nais_- tu cet -- te chan -- son
  Du jo -- li temps pas -- sé,
  Que les ma -- mans
  Chan -- taient aux pe -- tits gar -- çons
  Le soir pour les ber -- cer_?

  \set stanza = "1."
  C’est la lé -- gen -- de de l’en -- fant,
  De, l’en -- fant du pa -- ys d’Ar -- mor,
  Qui na -- quit un jour de grand vent,
  A -- vec un cœur tout rem -- pli d’or.
  Plus il al -- lait en gran -- dis -- sant,
  Et plus son cœur de -- ve -- nait grand,
  Plus son tré -- sor de -- ve -- nait lourd,
  Plus il a -- vait le mal d’a -- mour.
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
