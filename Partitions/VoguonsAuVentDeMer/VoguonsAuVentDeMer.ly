\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4.=60
  \time 12/8
  \key do \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueI = \relative do' {
  r8 | la4. mi'4 mi8 re4 do8 la4. | la4. mi'4 mi8 re4. do4
}

ParolesI = \lyricmode {
  \set stanza = "1." Vo -- guons au vent de mer, au gré des va -- gues,
}

MusiqueII = \relative do' {
  mi8 | la4 la8 sol4 sol8 fa[( re]) fa mi mi mi | la4 la8 sol4 sol8 fa[( re]) fa mi4
}

ParolesII = \lyricmode {
  \set stanza = "2." Ma -- rie, là_- haut, comme une é -- toi -- le, Ma -- rie, là_- haut, veil -- lez sur nous,
}

MusiqueIII = \relative do' {
  mi8 | la8 si do si4 si8 la sol la la mi mi | la8 si do si4 si8 la[( sol]) la la4
  \bar "|."
}

ParolesIII = \lyricmode {
  \set stanza = "3." É -- toi -- le du ciel, lu -- miè -- re sans voi -- le, É -- toi -- le du ciel, bril -- lez pour nous.
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
        \partial 8
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

\score{\transpose do re
  \new ChoirStaff
  <<
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \new Voice = "I" {
        \override Score.PaperColumn #'keep-inside-line = ##t
        \MetriqueArmure
        \partial 8
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
        s1.*6 s1.*2
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
        s1.*6 s1.*4
        \MusiqueI
      }
    >>
    \new Lyrics \lyricsto III {
      \ParolesI
    }
  >>
  \midi{}
}
