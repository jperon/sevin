\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4.=120
  \time 12/8
  \key re \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do'' {
  si8^"Refrain" si si si4 la8 si4 dod8 re4 r8
  la8 la la la4 sol8 fad4 sol8 la4 r8
  si8 si si si4 la8 si4 dod8 re4 re8
  re4 re8 mi4 re8 si4. si8 r8
  \bar "||"

  fad^"Couplet"
  si4 si8 si4 la8 si4 dod8 re4 r8
  la8 la la la4 sol8 fad4 sol8 la4 r8
  si8 si si si4 la8 si4 dod8 re4 re8
  re4 re8 mi4 re8 si4. si4 r8
  \bar "|."
}

Paroles = \lyricmode {
  De -- bout les gars, ré -- veil -- lez_- vous_!
  Il va fal -- loir en mettre un coup,
  De -- bout les gars, ré -- veil -- lez_- vous_!
  On va au bout du mon -- de.

  \set stanza = "1."
  Cet -- te mon -- ta -- gne que tu vois,
  On en vien -- dra à bout mon gars_:
  Un bull -- do -- zer et deux cents bras
  Et pas -- se -- ra la rou -- te_!
}

\score{
  <<
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \transpose re do
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
