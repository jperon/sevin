\version "2.18"
\header {
  tagline = ""
  composer = ""
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

\score{
  \new Staff {
  <<
    \set Staff.midiInstrument = "flute"
    \tempo 4=120
    \key bes \major
    \time 4/4
    \partial 4
    \new Voice ="1" \relative c' {
      \autoBeamOff
      r8 f | bes4 bes a8 f g a | bes4 d,8 f bes,4 r8
      f'8 | bes4 bes a8 f g a | bes4 d,8 f bes,4
      bes'8 c | d d d d c4
      c8 c | bes bes bes bes a4
      f8 f | g4 c8 c bes4 a | bes2. \bar "||"
      \voiceOne
      bes8^"Refrain" c | d4 d c d8 es | d4. c8 bes4
      bes8 c | d4 d c d8 es | d4. c8 bes4
      bes8 c | d d d d c4
      c8 c | bes bes bes bes a4
      f8 f | g4 c8 c bes4 a | bes2. \bar "|."
    }
    \addlyrics {
      Le roi Ar -- thur a -- vait trois fils, \italique Quel supp -- lice_!
      \roman
      Mais c'é -- tait un ex -- cel -- lent roi, \italique Oui ma foi_!
      \roman
      Par lui ses fils fur'nt chas -- sés,
      Oui chas -- sés à coups de pied
      Pour n'a -- voir pas vou -- lu chan -- ter.
      Pour n'a -- voir pas vou -- lu chan -- ter, O -- hé_!
      Pour n'a -- voir pas vou -- lu chan -- ter, O -- hé_!
      Par lui ses fils fur'nt chas -- sés,
      Oui chas -- sés à coups de pied,
      Pour n'a -- voir pas vou -- lu chan -- ter.
    }
    \new Voice ="2" \relative c'' {
      \autoBeamOff
      s4 | s1 | s | s | s | s | s | s | s2.
      \voiceTwo
      bes8 f | bes4 bes f bes8 c | bes4. f8 d4
      d8 f | bes4 bes f bes8 c | bes4. f8 d4
      d8 f | bes8 bes bes bes f4
      f8 f | g g g g d4
      d8 d | es4 c8 c f4 f | bes2. \bar "|."
    }
  >>
  }
  \layout{}
  \midi{}
}
