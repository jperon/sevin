\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4=90
  \time 4/4
  \key sib \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
  \partial 2 r8. re16 re8. re16
  sib'2~ sib8. sib16 la8. sol16
  mib'2 re8. do16 sib8. la16
  sol2 re'4 re8. re16
  re,2 r8. re16 re8. re16
  sib'2~ sib8. sib16 la8. sol16
  mib'2 re8. do16 sib8. la16
  sib8. do16 sib2 la4
  sib2 r4 sib8. do16
  re4.. sib16 fa4 sol8. do16
  sib2~ sib8 r sib8. do16
  re4.. sib16 fa4 sol8. do16
  sib2 r4 re8.\f re16
  re4 re,8 r r4 re8.\p re16
  mib2 re8 r re8. re16
  sib'2 sol4 \acciaccatura sol8 fa8. mib16
  re4 re r8. re16 re8. mi16 \bar "||"
  \key sol \major
  si'4. la16[( sol]) si4. la16[( sol])
  si2 sol8. re16 re8. re16
  si'4. la16[( sol]) la4 re
  re2 r8. re,16 re8. re16
  si'4. la16[( sol]) si4. la16[( sol])
  si2 sol8. si16 sol8. re16
  si8. re16 sol2 la4
  sol4 r r si8. re16
  sol,2 sol8 r si8. re16
  sol,2 sol8 r16 re re8. re16
  si'4. la16[( sol]) si4. la16[( sol])
  si2 sol8 r si8. re16
  sol,2 sol8 r si8. re16
  sol,2\ff sol8 r16 re sol8. si16
  re2 re4 fad,8. fad16
  sol4. r8 r2 \bar "|."
}

Paroles = \lyricmode {
  O -- yez, o -- yez, jeu -- nes Si -- zai -- nes,
  Tous les vieux Loups vont s'as -- sem -- blant_!
  Con -- seil de Chefs et de Chef -- tai -- nes_:
  Paix à la Meute_! Hon -- neur au Clan_!
  Lou -- ve -- teaux qui n'é -- cou -- tez pas les le -- çons du sage \markup{\smallCaps A} -- \markup{\smallCaps ké} -- \markup{\smallCaps la,}
  Pre -- nez gar -- de_! pre -- nez gar -- de, pre -- nez gar -- de, pre -- nez gar -- de_:
  Tou -- te la Jun -- gle vous re -- gar -- de,
  Tou -- te la Jun -- gle vous en -- tend_!
  Tou -- te la Jun -- gle vous re -- gar -- de,
  Tou -- te la Jun -- gle vous en -- tend_!
  \italique
  Pre -- nez gar -- de, pre -- nez gar -- de,
  Tou -- te la Jun -- gle vous re -- gar -- de,
  Pre -- nez gar -- de, pre -- nez gar -- de,
  Tou -- te la Jun -- gle vous en -- tend_!
}

\score{
  \new Staff <<
    \set Staff.midiInstrument = "flute"
    \new Voice = "theme" {
      \override Score.PaperColumn #'keep-inside-line = ##t
      \autoBeamOff
      \MetriqueArmure
      \MusiqueTheme
    }
    \new Lyrics \lyricsto theme {
      \Paroles
    }                       
  >>
  \layout{}
  \midi{}
}
