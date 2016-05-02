\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4.=45
  \time 6/8
  \key lab \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueI = \relative do' {
  \partial 8
  mib8\pp | mib4 mib8 fa4 mib8 | mib4 mib8 do4. |
  do4( sib8) lab4 sib8 | do4. do4 \breathe
  mib8 | mib4 mib8 fa4 mib8 | mib4 mib8 do4 \breathe
  
  reb8\f | do4( sib8) lab4( sib8) | lab4.~ lab4
  do8 | sib4 sol8 lab4 fa8 | sol4. sol4 \breathe
  mib'8 | mib4 mib8 fa4 mib8 | mib4. do4 \breathe
  reb8 | do4( fa8 mib[ fa reb]) | do4.~\fermata do4 \bar "|."
}

MusiqueII = \relative do' {
  do8 | do4 do8 reb4 do8 | sib4 sib8 lab4. |
  lab4( sol8) mib4 sol8 | lab4. lab4
  do8 | do4 lab8 lab4 lab8 | sol4 sol8 lab4
  
  fa8 | lab4( fa8) mib4( sol8) | lab4.~ lab4
  mib8 | sol4 mib8 fa4 re8 | mib4 mib4
  sol8 | lab4 do8 sib4 sol8 | lab4. lab4
  fa8 | lab4( lab8 lab4 sol8) | lab4.~ lab4
}

MusiqueIII = \relative do' {
  lab8 | lab4 lab8 lab4 lab8 | sol4 sol8 lab4 |
  lab4( mib8) do4 mib8 | lab4. lab4 \breathe
  lab8 | lab4 do,8 reb4 do8 | do4 do8 fa4 \breathe
  
  sib,8 | lab4( reb8) do4( mib8) | lab4.~ lab4
  lab8 | mib'4 mib8 lab,4 sib8 | mib4. mib4 \breathe
  do8 | do4 lab8 reb4 mib8 | do4. lab4 \breathe
  sib8 | fa'4( reb8 do[ reb sib]) | lab4.~\fermata lab4
}

ParolesI = \lyricmode {
  Re -- gí -- na cæ -- li, iú -- bi -- la,
  Gau -- de, Ma -- rí -- a !
  Iam pul -- sa ce -- dunt nú -- bi -- la.
  
  Al -- le -- lú -- ia !
  Læ -- tá -- re, o Ma -- rí -- a,
  Læ -- tá -- re, o Ma -- rí -- a,
  Ma -- rí -- a.
}

ParolesII = \lyricmode {
  Quam di -- gna ter -- ris gí -- gne -- re,
  Gau -- de, Ma -- rí -- a !
  Vi -- vis re -- súr -- get fú -- ne -- re.
}

ParolesIII = \lyricmode {
  Sunt fra -- cta mor -- tis spí -- cu -- la,
  Gau -- de, Ma -- rí -- a !
  Ie -- su ia -- cet mors súb -- di -- ta.
}

\score{
  \new ChoirStaff <<
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \override Score.PaperColumn #'keep-inside-line = ##t
      \MetriqueArmure
      \clef "treble_8"
      \new Voice = "I" {\voiceOne
        \MusiqueI
      }
      \new Lyrics \lyricsto I {
        \ParolesI
      }
      \new Lyrics \lyricsto I {
        \ParolesII
      }
      \new Lyrics \lyricsto I {
        \ParolesIII
      }
      \new Voice = "II" {\voiceTwo
        \MusiqueII
      }
    >>
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \override Score.PaperColumn #'keep-inside-line = ##t
      \MetriqueArmure
      \clef bass
      \new Voice = "III" {%\voiceOne
        \MusiqueIII
      }
    >>
  >>
  \layout{}
  \midi{}
}
