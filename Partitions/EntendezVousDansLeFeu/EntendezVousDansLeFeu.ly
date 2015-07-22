\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4=110
  \time 2/4
  \key do \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueI = \relative do' {
  do4 do
  re4 re
  mi4 mi8[( re])
  do2
}

MusiqueII = \relative do' {
  mi4 mi
  fa4 fa
  sol4 sol8[( fa])
  mi2
}

MusiqueIII = \relative do'' {
  do4 sol
  sol8[( fa]) mi[( re])
  do8[( re]) mi[( fa])
  sol2
}

MusiqueIV = \relative do' {
  do4 do
  sol2
  do4 do
  do2
  \bar "|."
}

ParolesI = \lyricmode {
  \set stanza = "1." En -- ten -- dez vous dans le feu
}

ParolesII = \lyricmode {
  \set stanza = "2." Tous ces bruits my -- sté -- ri -- eux_?
}

ParolesIII = \lyricmode {
  \set stanza = "3." Ce sont les ti -- sons qui chantent_:
}

ParolesIV = \lyricmode {
  \set stanza = "4." É -- clai -- reur, sois joy -- eux_!
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
        \MusiqueIV
      }
    >>
    \new Lyrics \lyricsto I {
      \ParolesI
      \ParolesII
      \ParolesIII
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
        s4*32 s4*8
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
        s4*32 s4*16
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
        s4*32 s4*24
        \MusiqueI
      }
    >>
    \new Lyrics \lyricsto IV {
      \ParolesI
    }
  >>
  \midi{}
}
