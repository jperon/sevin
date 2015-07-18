\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4=120
  \time 4/4
  \key fa \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueI = \relative do' {
  fa8. fa16 fa8 sol la2
  sol8. sol16 sol8 sol fa4 do8 r
  fa8. fa16 fa8 sol la2
  sol8. sol16 sol8 sol fa4 r
}

MusiqueII = \relative do'' {
  la8 la la sib do do do do
  sib8 sib sib sib la4 fa8 r
  la8 la la sib do do do do
  sib8 sib sib sib la4 r
}

MusiqueIII = \relative do'' {
  do2. la4
  do4 r r2
  do2. la4
  do4 r r2
}

MusiqueIV = \drummode {
  hh4 r hh r
  hh4 hh hh r
  hh4 r hh r
  hh4 hh hh r
  \bar "|."
}

ParolesI = \lyricmode {
  \set stanza = "1."
  Il é -- tait des scouts qui ne dor -- maient guè -- re,
  Il é -- tait des scouts qui ne dor -- maient pas_;
}

ParolesII = \lyricmode {
  \set stanza = "2."
  C’est à caus' du chef, du chef_! si vous ne dor -- mez guère,
  C’est à caus' du chef, du chef_! si vous ne dor -- mez pas.
}

ParolesIII = \lyricmode {
  \set stanza = "3."
  C’est le chef_!
  C’est le chef_!
}

ParolesIV = \lyricmode {
  \set stanza = "4."
  Chef, chef_! Chef, chef, chef_!
  Chef, chef_! Chef, chef, chef_!
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
    \new DrumStaff <<
      \new DrumVoice = "IV" {
        \MusiqueIV
      }
    >>
    \new Lyrics \lyricsto IV {
      \ParolesIV
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
        \MusiqueI \MusiqueII \MusiqueIII \drums{\MusiqueIV} \MusiqueI \MusiqueII \MusiqueIII \drums{\MusiqueIV}
      }
    >>
    \new Lyrics \lyricsto I {
      \ParolesI \ParolesII \ParolesIII \ParolesIV \ParolesI \ParolesII \ParolesIII \ParolesIV
    }
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \new Voice = "II" {
        \override Score.PaperColumn #'keep-inside-line = ##t
        \MetriqueArmure
        s1*16 s1*4 \MusiqueI \MusiqueII \MusiqueIII \drums{\MusiqueIV}
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
        s1*16 s1*8 \MusiqueI \MusiqueII \MusiqueIII \drums{\MusiqueIV}
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
        s1*16 s1*12 \MusiqueI \MusiqueII \MusiqueIII \drums{\MusiqueIV}
      }
    >>
    \new Lyrics \lyricsto IV {
      \ParolesI \ParolesII \ParolesIII \ParolesIV
    }
  >>
  \midi{}
}
