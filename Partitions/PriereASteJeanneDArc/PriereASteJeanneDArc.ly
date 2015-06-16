\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4=90
  \time 2/4
  \key fa \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueSoprane = \relative do' {
  r8 do8\mf^"Solo" fa sol
  la8 sib la sib
  sol2~
  sol8 \breathe sol sib la
  fa8 re mi fa
  sol2~
  sol8 r8 r4
  R2*4
  r4 do4^"Chœur"
  do4 do
  do4 do
  do4\< do
  re4 do
  fa2~\f\>
  fa4 mi8 re\!
  do8[( la]) fa sol
  la2~
  la8 do, re fa
  re4. \breathe re8
  sol4 \breathe re
  do2\fermata \bar "|."
}

MusiqueAlto = \relative do'' {
  R2*11
  r4 do4
  do4 do
  do4 sib
  la4 la
  sol4 sol
  la2~
  la8 r8 r4
  R2*2
  r8 do, re fa
  re4. \breathe re8
  sol4 \breathe re
  do2\fermata
}

MusiqueTenor = \relative do' {
  R2*6
  r8 la\pp\< sib do
  re8 mi re mi
  do2~
  do8\! \breathe la8^"rall." do sib
  la8 fa sol la
  do2
  r4 do^"Chœur"
  re4 mi
  fa4 fa
  fa4 fa
  fa2~
  fa8 r8 r4
  R2*2
  la,2\pp^"Bouche fermée"
  sib2~
  sib2
  la2\fermata
}

MusiqueBasse = \relative do' {
  R2*14
  r4 la4
  sib4 do
  reb2~
  reb8 r8 r4
  R2*2
  fa,2\pp^"Bouche fermée"
  sol4 do,~
  do2
  fa2\fermata
}

ParolesSoprane = \lyricmode {
  Ô Jean -- ne, par ta foi d'en -- fant,
  Par ton a -- mour du Pain Vi -- vant,
  Heu -- reux, heu -- reux, heu -- reux, heu -- reux
  qui garde a -- vec toi jus -- qu'au soir
  La Cha -- ri -- té, la Foi, l'Es -- poir.
}

ParolesAlto = \lyricmode {
  Heu -- reux, heu -- reux, heu -- reux, heu -- reux, heu -- reux.
  La Cha -- ri -- té, la Foi, l'Es -- poir.
}

ParolesTenor = \lyricmode {
  Et par tes Voix de Dom -- ré -- my,
  Gar -- de nous de \italique croire \roman à de -- mi.
  Heu -- reux, heu -- reux, heu -- reux, heu -- reux.
}

ParolesBasse = \lyricmode {
  Heu -- reux, heu -- reux.
}

\score{
  \new ChoirStaff
  <<
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \new Voice = "soprane" {
        \override Score.PaperColumn #'keep-inside-line = ##t
        \MetriqueArmure
        \MusiqueSoprane
      }
    >>
    \new Lyrics \lyricsto soprane {
      \ParolesSoprane
    }
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \new Voice = "alto" {
        \override Score.PaperColumn #'keep-inside-line = ##t
        \MetriqueArmure
        \MusiqueAlto
      }
    >>
    \new Lyrics \lyricsto alto {
      \ParolesAlto
    }
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \clef "treble_8"
      \new Voice = "tenor" {
        \override Score.PaperColumn #'keep-inside-line = ##t
        \MetriqueArmure
        \MusiqueTenor
      }
    >>
    \new Lyrics \lyricsto tenor {
      \ParolesTenor
    }
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \clef bass
      \new Voice = "basse" {
        \override Score.PaperColumn #'keep-inside-line = ##t
        \MetriqueArmure
        \MusiqueBasse
      }
    >>
    \new Lyrics \lyricsto basse {
      \ParolesBasse
    }
  >>
  \layout {
    \context { \Staff
      \RemoveEmptyStaves
      \override VerticalAxisGroup #'remove-first = ##t
    }
  }
  \midi{}
}
