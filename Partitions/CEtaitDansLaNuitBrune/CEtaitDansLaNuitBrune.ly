\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4.=60
  \time 12/8
  \key fa \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueI = \relative do' {
  do16 do
  fa8 fa fa la fa do16 do
  fa8 mi fa sol8 r do,16 do
  sol'8 sol sol sib sol do,16 do
  do8 re mi fa4
  \bar "|."
}

MusiqueII = \relative do'' {
  la16 la
  la4 sib8 do la la16 la
  la8[( sol]) la sib8 r sib16 sib
  sib4 do8 re sib do16 do
  do4 sib8 la4
}

ParolesI = \lyricmode {
  \set stanza = "1."
  C’é -- tait dans la nuit bru -- ne,
	Sur un clo -- cher jau -- ni,
	Sur un clo -- cher, la lu -- ne
	Comme un point sur un \italique i.
}

ParolesII = \lyricmode {
	\set stanza = "2."
  Ho_- la_- la_! di_- i_- i,
	Ho_- la_- la_! di_- oh_!
	Ho_- la_- la_! di_- i_- i,
	Ho_- la_- la_! di_- oh_!
}

\score{
  \new ChoirStaff
  <<
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \new Voice = "voixI" {
        \override Score.PaperColumn #'keep-inside-line = ##t
        \MetriqueArmure
        \partial 8 \MusiqueI
      }
      \new Lyrics \lyricsto voixI {
        \ParolesI
      }
    >>
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \new Voice = "voixII" {
        \override Score.PaperColumn #'keep-inside-line = ##t
        \MetriqueArmure
        \MusiqueII
      }
      \new Lyrics \lyricsto voixII {
        \ParolesII
      }
    >>
  >>
  \layout{}
}
\score{
  \new ChoirStaff
  <<
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \new Voice = "voixI" {
        \override Score.PaperColumn #'keep-inside-line = ##t
        \MetriqueArmure
        \partial 8 \MusiqueI \MusiqueII \MusiqueI \MusiqueII \MusiqueI
      }
      \new Lyrics \lyricsto voixI {
        \ParolesI \ParolesII \ParolesI \ParolesII \ParolesI
      }
    >>
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \new Voice = "voixII" {
        \override Score.PaperColumn #'keep-inside-line = ##t
        \MetriqueArmure
        s8*72 \MusiqueI \MusiqueII
      }
      \new Lyrics \lyricsto voixII {
        \ParolesI \ParolesII
      }
    >>
  >>
  \midi{}
}
