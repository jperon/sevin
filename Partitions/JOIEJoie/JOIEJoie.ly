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
  do8 do do do do do do do | sol'4 sol sol2
}

MusiqueII = \relative do'' {
  la8 la la la la la la la | sol4 sol sol2
}

MusiqueIII = \relative do' {
  fa8 fa fa fa fa fa fa fa | mi4 mi mi2
}

MusiqueIV = \relative do' {
  re8 re re re re re re re | do4 do do2
  \bar "|."
}

ParolesI = \lyricmode {
  \set stanza = "1." J_- o_- i_- e, j_- o_- i_- e, joie, joie, joie_!
}

ParolesII = \lyricmode {
  \set stanza = "2." Joie et bonne hu -- meur sont no -- tre loi, loi, loi_!
}

ParolesIII = \lyricmode {
  \set stanza = "3." Nous ne pou -- vons nous pas -- ser de toi, toi, toi,
}

ParolesIV = \lyricmode {
  \set stanza = "4." J_- o_- i_- e, j_- o_- i_- e, joie, joie, joie_!
}

\score{\transpose do re
  \new ChoirStaff
  <<
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \new Voice = "I" {
        \override Score.PaperColumn #'keep-inside-line = ##t
        \MetriqueArmure
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
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \new Voice = "IV" {
        \override Score.PaperColumn #'keep-inside-line = ##t
        \MetriqueArmure
        \MusiqueIV
      }
    >>
    \new Lyrics \lyricsto IV {
      \ParolesIV
    }
  >>
  \layout{}
}

\score{\transpose do re
  \new ChoirStaff
  <<
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \new Voice = "I" {
        \override Score.PaperColumn #'keep-inside-line = ##t
        \MetriqueArmure
        \MusiqueI \MusiqueII \MusiqueIII \MusiqueIV
        \MusiqueI \MusiqueII \MusiqueIII \MusiqueIV
      }
    >>
    \new Lyrics \lyricsto I {
      \ParolesI \ParolesII \ParolesIII \ParolesIV
      \ParolesI \ParolesII \ParolesIII \ParolesIV
    }
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \new Voice = "II" {
        \override Score.PaperColumn #'keep-inside-line = ##t
        \MetriqueArmure
        s2*16 s2*4
        \MusiqueI \MusiqueII \MusiqueIII
      }
    >>
    \new Lyrics \lyricsto II {
      \ParolesI \ParolesII \ParolesIII
    }
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \new Voice = "III" {
        \override Score.PaperColumn #'keep-inside-line = ##t
        \MetriqueArmure
        s2*16 s2*8
        \MusiqueI \MusiqueII
      }
    >>
    \new Lyrics \lyricsto III {
      \ParolesI \ParolesII
    }
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \new Voice = "IV" {
        \override Score.PaperColumn #'keep-inside-line = ##t
        \MetriqueArmure
        s2*16 s2*12
        \MusiqueI
      }
    >>
    \new Lyrics \lyricsto IV {
      \ParolesI
    }
  >>
  \midi{}
}
