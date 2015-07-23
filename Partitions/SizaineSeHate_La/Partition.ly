\version "2.18"

\score{
  \new Staff <<
    \set Staff.midiInstrument = "flute"
    \relative c'{
      \autoBeamOff
      \key f \major
      \time 6/8
      \tempo 4.=120
      \partial 8
      f8 | a4 g8 a4 bes8 | c4. c | d4 d8 e4 e8 | f4. r4. |
      c4. bes8 a g | a4. f4. | g8 a bes c4 e,8 | f4. r4. \bar "||"
      c'4. c | c4 d8 c4 bes8 | a4. a | a4 bes8 a4 g8 |
      f4. f | f e | f~f4 \bar "|."
    }
    \addlyrics {
      La si -- zai -- ne se hâ -- te, Un et Deux et Trois_!
      Pas d'é -- pin' aux pat -- tes, Et plus vi -- te que ça.
      Ma, ta, sa si -- zai -- ne, Tou -- tes les si -- zai -- nes,
      A -- ké -- la, sont là.
    }
  >>
  \layout{}
  \midi{}
}
