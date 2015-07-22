\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 2=50
  \time 4/2
  \key do \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueI = \relative do' {
  do2 do si do \bar "||"
}

MusiqueII = \relative do' {
  mi2 fa re4 re sol r \bar "||"
}

MusiqueIII = \relative do'' {
  sol4 sol la la sol re mi r \bar "||"
}

MusiqueIV = \relative do' {
  do2 re sol do, \bar "|."
}

ParolesI = \lyricmode {
  \set stanza = "1." Je veux voir Dieu,
}

ParolesII = \lyricmode {
  \set stanza = "2." Le voir de mes yeux,
}

ParolesIII = \lyricmode {
  \set stanza = "3." Joie sans fin des Bien -- heu -- reux,
}

ParolesIV = \lyricmode {
  \set stanza = "4." Je veux voir Dieu.
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
        \MusiqueI \MusiqueII \MusiqueIII \MusiqueIV
      }
    >>
    \new Lyrics \lyricsto I {
      \ParolesI \ParolesII \ParolesIII \ParolesIV
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


%{
\score{
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
%}
