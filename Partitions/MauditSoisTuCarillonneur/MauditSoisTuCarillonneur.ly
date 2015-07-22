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

MusiqueI = \relative do' {
  fa4 fa8 sol la4 fa
  sol4 mi fa2
}

MusiqueII = \relative do'' {
  la4 la8 sib do4 la
  sib4 do la2
}

MusiqueIII = \relative do'' {
  do8 do do do do4 re8 do
  sib4 do8 sib la4 la
}

MusiqueIV = \relative do'' {
  la8 la la la la4 sib8 la
  sol4 la8 sol fa2
}

MusiqueV = \relative do' {
  fa8 fa fa fa fa4 fa8 fa
  do4 do fa2
  \bar "|."
}

ParolesI = \lyricmode {
  \set stanza = "1." Mau -- dit sois_- tu, ca -- ril -- lon -- neur,
}

ParolesII = \lyricmode {
  \set stanza = "2." Que Dieu cré -- a pour mon mal -- heur_!
}

ParolesIII = \lyricmode {
  \set stanza = "3." Dès le point du jour à la cloche il s’ac -- cro -- che,
}

ParolesIV = \lyricmode {
  \set stanza = "4." Et le soir en -- cor caril -- lon -- ne plus fort.
}

ParolesV = \lyricmode {
  \set stanza = "5." Quand son -- ne -- ra_- t’on la mort du son -- neur_?
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
        \MusiqueI \bar "||"
        \MusiqueII \bar "||"
        \MusiqueIII \bar "||"
        \MusiqueIV \bar "||"
        \MusiqueV
      }
    >>
    \new Lyrics \lyricsto I {
      \ParolesI
      \ParolesII
      \ParolesIII
      \ParolesIV
      \ParolesV
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
        \MusiqueI \MusiqueII \MusiqueIII \MusiqueIV \MusiqueV
        \MusiqueI \MusiqueII \MusiqueIII \MusiqueIV \MusiqueV
      }
    >>
    \new Lyrics \lyricsto I {
      \ParolesI \ParolesII \ParolesIII \ParolesIV \ParolesV
      \ParolesI \ParolesII \ParolesIII \ParolesIV \ParolesV
    }
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \new Voice = "II" {
        \override Score.PaperColumn #'keep-inside-line = ##t
        \MetriqueArmure
        s2*20 s2*4
        \MusiqueI \MusiqueII \MusiqueIII \MusiqueIV
      }
    >>
    \new Lyrics \lyricsto II {
      \ParolesI \ParolesII \ParolesIII \ParolesIV
    }
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \new Voice = "III" {
        \override Score.PaperColumn #'keep-inside-line = ##t
        \MetriqueArmure
        s2*20 s2*8
        \MusiqueI \MusiqueII \MusiqueIII
      }
    >>
    \new Lyrics \lyricsto III {
      \ParolesI \ParolesII \ParolesIII
    }
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \new Voice = "IV" {
        \override Score.PaperColumn #'keep-inside-line = ##t
        \MetriqueArmure
        s2*20 s2*12
        \MusiqueI \MusiqueII
      }
    >>
    \new Lyrics \lyricsto IV {
      \ParolesI \ParolesII
    }
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \new Voice = "V" {
        \override Score.PaperColumn #'keep-inside-line = ##t
        \MetriqueArmure
        s2*20 s2*16
        \MusiqueI
      }
    >>
    \new Lyrics \lyricsto V {
      \ParolesI
    }
  >>
  \midi{}
}
