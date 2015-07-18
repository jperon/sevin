\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4.=60
  \time 6/8
  \key fa \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueI = \relative do' {
  \partial 4.
  fa4 sol8
  la8 sol fa sib4 la8
  la8[( sol]) fa sib4 la8
  la4.
}

MusiqueII = \relative do'' {
  la4 sib8
  do8 sib la re4 do8
  do8 sib la re4 do8
  do4.
  \bar "|."
}

ParolesI = \lyricmode {
  \set stanza = "1." C’est la clo -- che du vieux ma -- noir, du vieux ma -- noir,
}

ParolesII = \lyricmode {
  \set stanza = "2." Qui nous dit le re -- tour du soir, le re -- tour du soir.
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
  >>
  \layout{}
  \midi{}
}
