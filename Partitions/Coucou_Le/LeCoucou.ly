\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4=110
  \time 4/4
  \key fa \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueI = \relative do' {
  r8 do
  fa8. fa16 fa8 la fa4 fa8 la
  sol8. fa16 sol8 la fa4 r8 do
  fa8. fa16 fa8 la fa4 fa8 la
  sol8. fa16 sol8 la fa4
}

MusiqueII = \relative do'' {
  r8 do
  la8 la la do la la la do
  sib8. la16 sib8 do la4 r8 do
  la8 la la do la la la do
  sib8. la16 sib8 do la4
  \bar "|."
}

ParolesI = \lyricmode {
  \set stanza = "1."
  Dans la fo -- rêt loin -- tai -- ne, en -- tends_- tu le cou -- cou_?
  Du haut de son grand chê -- ne, il ré -- pond au hi -- bou_:
}

ParolesII = \lyricmode {
  \set stanza = "2."
  Cou -- cou, hi -- bou, cou -- cou, hi -- bou, cou -- cou, cou -- rou -- cou -- cou_!
  Cou -- cou, hi -- bou, cou -- cou, hi -- bou, cou -- cou, cou -- rou -- cou -- cou_!
}

\score{
  \new ChoirStaff
  <<
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \new Voice = "I" {
        \override Score.PaperColumn #'keep-inside-line = ##t
        \MetriqueArmure
        \partial 4
        \MusiqueI \bar "||"
        \MusiqueII
      }
    >>
    \new Lyrics \lyricsto I {
      \ParolesI
      \ParolesII
    }
  >>
  \layout{}
}

\score{
  \new ChoirStaff
  <<
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \new Voice = "I" {
        \override Score.PaperColumn #'keep-inside-line = ##t
        \MetriqueArmure
        \partial 4 \MusiqueI \MusiqueII \MusiqueI \MusiqueII \MusiqueI
      }
    >>
    \new Lyrics \lyricsto I {
      \ParolesI \ParolesII \ParolesI \ParolesII \ParolesI
    }
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \new Voice = "II" {
        \override Score.PaperColumn #'keep-inside-line = ##t
        \MetriqueArmure
        s1*4 s1*4 s1*4 \MusiqueI \MusiqueII
      }
    >>
    \new Lyrics \lyricsto II {
      \ParolesI \ParolesII
    }
  >>
  \midi{}
}
