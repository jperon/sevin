\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4=80
  \time 3/4
  \key mib \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueI = \relative do' {
  \partial 2 mib8 fa sol sol
  sol8 sol sol sib sol <sib, fa'>
  <mib sol>8 sol sol sib sol <sib, fa'>
  \time 4/4
  <mib sol>8 sol sol sib <<
    {\voiceOne
      sol4 fa
      mib2
    }
    \new Voice {\voiceTwo
      sib'4 sib8[ lab]
      sol2
    }
  >>
  mib8 fa sol sol
  \time 3/4
  sol8 sol sol sib sol <sib, fa'>
  <mib sol>8 sol sol sib sol <sib, fa'>
  \time 4/4
  <mib sol>8 sol sol sib <<
    {\voiceOne
      sol4 fa
      mib4\fermata
    }
    \new Voice {\voiceTwo
      sib'4 sib8[ lab]
      sol4
    }
    \new Voice {\voiceFour
      mib'4 re4
      mib4
    }
  >>
}

MusiqueIIa = \relative do'' {
  sol8 lab sib4 sol
  do8 sib lab sol fa4 sib
  sol8 fa mib fa sol4 mib
  lab8 sol fa mib re4 mib
  fa4\fermata sol8 lab sib4 sol
  do8 sib lab sol fa4 sib
  sol8 fa mib fa sol4 mib
  lab8 sol fa sol fa4. mib8
  mib1
  \bar "|."
}

MusiqueIIb = \relative do' {
  mib8 fa sol4 mib
  mi2 fa4 re
  mib!2. mib4
  do2 sib4 <sib do>
  <sib re>4 mib8 fa sol4 mib
  mi2 fa4 re
  mib!2. mib4
  do8 sib lab4 sib8 <lab sib>4.
  <sol sib>1
}

Paroles = \lyricmode {
  La nuit est lim -- pi -- de,
  L’é -- tang est sans ri -- de,
  Dans le ciel splen -- di -- de
  Luit le crois -- sant d’or_;
  Or -- me, chêne ou trem -- ble,
  Nul ar -- bre ne trem -- ble,
  Au loin le bois sem -- ble
  Un gé -- ant qui dort.
  Chien ni loup ne quit -- te
  Sa niche ou son gî -- te,
  Au -- cun bruit n’a -- gi -- te
  La terre au re -- pos_;
  A -- lors dans la va -- se,
  Ou -- vrant en ex -- ta -- se
  Leurs yeux de to -- pa -- ze,
  Chan -- tent les cra -- pauds.
}

\score{
  <<
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \new Voice = "theme" {
        \override Score.PaperColumn #'keep-inside-line = ##t
        \MetriqueArmure
        \MusiqueI
        <<
          {\voiceOne \MusiqueIIa}
          \new Voice {\voiceTwo \MusiqueIIb}
        >>
      }
    >>
    \new Lyrics \lyricsto theme {
      \Paroles
    }
  >>
  \layout{}
  \midi{}
}
