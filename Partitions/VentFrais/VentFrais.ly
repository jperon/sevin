\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4=120
  \time 4/4
  \key do \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueI = \relative do' {
  re2 do | re4 re8. re16 la2 |
}

ParolesI = \lyricmode {
  \set stanza = "1."
  Vent frais, vent du ma -- tin,
}

MusiqueII = \relative do' {
  re4 re mi mi | fa8 fa fa fa mi2 |
}

ParolesII = \lyricmode {
  \set stanza = "2."
  Vent qui souffle au som -- met des grands pins_;
}

MusiqueIII = \relative do'' {
  la4. sol8 la4. sol8 | la4. sol8 la sol fa mi |
  \bar "|."
}

ParolesIII = \lyricmode {
  \set stanza = "3."
  Joie du vent qui souffle, al -- lons dans le grand_…
}

\score{\transpose re fa
  \new ChoirStaff
  <<
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \new Voice = "I" {
        \override Score.PaperColumn #'keep-inside-line = ##t
        \MetriqueArmure
        \MusiqueI \bar "||" \MusiqueII \bar "||" \MusiqueIII
      }
    >>
    \new Lyrics \lyricsto I {
      \ParolesI \ParolesII \ParolesIII
    }
  >>
  \layout{}
}

\score{\transpose re fa
  \new ChoirStaff
  <<
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \new Voice = "I" {
        \override Score.PaperColumn #'keep-inside-line = ##t
        \MetriqueArmure
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
        s1*6 s1*2
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
        s1*6 s1*4
        \MusiqueI re'2
      }
    >>
    \new Lyrics \lyricsto III {
      \ParolesI
    }
  >>
  \midi{}
}
