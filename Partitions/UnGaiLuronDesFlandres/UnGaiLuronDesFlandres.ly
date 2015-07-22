\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4=120
  \time 2/2
  \key do \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueI = \relative do'' {
  sol4 | do4. do8 sol4. sol8 | la4 la r
  mi4 | fa4 re sol4. sol8 | sol4 r r
  sol4 | do4 r r
  mi,4 | fa4 re sol4. sol8 | sol4 r r
}

ParolesI = \lyricmode {
  \set stanza = "1."
  Un gai lu -- ron des Flan -- dres
  S’en vint en Wal -- lo -- nie,
  S’en vint,
  S’en vint en Wal -- lo -- nie.
}

MusiqueII = \relative do'' {
  sol4 | mi'4. mi8 mi4. re8 | re4 do r
  do4 | re8[( mi]) fa re do4 si | do8.
  do16 do8 re mi4 r4 | r8.
  do16 do8 re mi4
  mi4 | re8[( mi]) fa re do4 si | do4 r r
}

ParolesII = \lyricmode {
  \set stanza = "2."
  Pour y chan -- ter des fa -- bles,
  Des fa -- bles de son pa -- ys,
  Ti -- ra la la,
  Ti -- ra la la,
  Des fa -- bles de son pa -- ys.
}

MusiqueIII = \relative do'' {
  sol4 | sol'4. sol8 sol4. fa8 | fa4 mi r
  mi4 | fa8[( sol]) la fa mi4 re | mi8.
  mi16 mi8 fa sol4 r | r8.
  mi16 mi8 fa sol4
  sol4 | fa8[( sol]) la fa mi4 re | do2 r4
  \bar "|."
}

ParolesIII = \lyricmode {
  \set stanza = "3."
  Heu -- reux qui peut en -- ten -- dre,
  En -- ten -- dre de ses chan -- sons_!
  Ti -- ra la la,
  Ti -- ra la la,
  En -- ten -- dre de ses chan -- sons.
}

\score{\transpose do sol,
  \new ChoirStaff
  <<
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \new Voice = "I" {
        \override Score.PaperColumn #'keep-inside-line = ##t
        \MetriqueArmure
        \partial 4
        \MusiqueI
      }
    >>
    \new Lyrics \lyricsto I {
      \ParolesI
    }
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \new Voice = "II" {
        \override Score.PaperColumn #'keep-inside-line = ##t
        \MetriqueArmure
        \MusiqueII
      }
    >>
    \new Lyrics \lyricsto II {
      \ParolesII
    }
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \new Voice = "III" {
        \override Score.PaperColumn #'keep-inside-line = ##t
        \MetriqueArmure
        \MusiqueIII
      }
    >>
    \new Lyrics \lyricsto III {
      \ParolesIII
    }
  >>
  \layout{}
}

\score{\transpose do sol,
  \new ChoirStaff
  <<
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \new Voice = "I" {
        \override Score.PaperColumn #'keep-inside-line = ##t
        \MetriqueArmure
        \partial 4
        \MusiqueI \MusiqueII \MusiqueIII
        \MusiqueI \MusiqueII \MusiqueIII
      }
    >>
    \new Lyrics \lyricsto I {
      \ParolesI \ParolesII \ParolesIII
      \ParolesI \ParolesII \ParolesIII
    }
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \new Voice = "II" {
        \override Score.PaperColumn #'keep-inside-line = ##t
        \MetriqueArmure
        s1*21 s1*7
        \MusiqueI \MusiqueII
      }
    >>
    \new Lyrics \lyricsto II {
      \ParolesI \ParolesII
    }
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \new Voice = "III" {
        \override Score.PaperColumn #'keep-inside-line = ##t
        \MetriqueArmure
        s1*21 s1*14
        \MusiqueI
      }
    >>
    \new Lyrics \lyricsto III {
      \ParolesI
    }
  >>
  \midi{}
}
