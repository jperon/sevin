\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4=100
  \time 4/4
  \key do \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueI = \relative do' {
  do4 do8 do do4 do8 re
  mi4 mi8 mi mi4 r
}

MusiqueII = \relative do' {
  mi4 mi8 mi mi4 mi8 fa
  sol4 sol8 sol sol4 r
}

MusiqueIII = \relative do'' {
  sol4 sol8 la sol[( mi]) do4
  do'4 do8 re do[( la]) fa re
}

MusiqueIV = \relative do' {
  do4 do do do8 do
  do4 do8 do do4 r
  \bar "|."
}

ParolesI = \lyricmode {
  \set stanza = "1." Chut_! Plus de bruit, c’est la ron -- de de nuit.
}

ParolesII = \lyricmode {
  \set stanza = "2." Chut_! Plus de bruit, c’est la ron -- de de nuit.
}

ParolesIII = \lyricmode {
	\set stanza = "3." En di -- li -- gen -- ce, fai -- sons si -- len -- ce_: Mar-
}

ParolesIV = \lyricmode {
	\set stanza = "4." -chons sans bruit, c’est la ron -- de de nuit.
}

\score{
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

\score{\transpose do do
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
        s2*16 s2*8
        \MusiqueI \MusiqueII \MusiqueIII \MusiqueIV
      }
    >>
    \new Lyrics \lyricsto III {
      \ParolesI \ParolesII \ParolesIII \ParolesIV
    }
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \new Voice = "IV" {
        \override Score.PaperColumn #'keep-inside-line = ##t
        \MetriqueArmure
        s2*16 s2*12
        \MusiqueI \MusiqueII \MusiqueIII \MusiqueIV
      }
    >>
    \new Lyrics \lyricsto IV {
      \ParolesI \ParolesII \ParolesIII \ParolesIV
    }
  >>
  \midi{}
}
