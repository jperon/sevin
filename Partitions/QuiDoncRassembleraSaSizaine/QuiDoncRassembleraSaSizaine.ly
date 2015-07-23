\version "2.18"

\score{
  \new Staff <<
    \set Staff.midiInstrument = "flute"
    \relative c'{
      \key g \major
      \time 6/8
      \tempo 4.=120
      \partial 8
      \autoBeamOff
      d8 | g4 g8 g4 b8 | g4 g8 g4 b8 | a4 a8 a g a | b4. g4
      d8 | g4 g8 g4 b8 | g4 g8 g4 b8 | a4 a8 a b a | g2.^"Fin" \bar "||"
      d'4. a4 a8 | b4 c8 b4. | d4. a4 a8 | b4 c8 b4. |
      c4. b4 a8 | c4. b4 b8 | g4 g8 b4 b8 | a2. |
      c4. b4 a8 | c4. b4 b8 | g4 g8 b4 b8 | d4.~d4^"D.C." \bar "|."
    }
    \addlyrics{
      Qui donc ras -- sem -- ble -- ra sa si -- zaine au com -- plet la pre -- miè -- re
      Qui donc ras -- sem -- ble -- ra ses lou -- ve -- teaux au cri d’A -- ké -- la.
      Frè -- res loups et lou -- varts, Crai -- gnons d’être en re -- tard,
      La sau -- te -- rel -- le sau -- te, bon -- dit et court,
      Lé -- gers comme el -- le cou -- rons, cou -- rons tou -- jours.
    }
  >>
  \layout{}
  \midi{}
}
