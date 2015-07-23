\version "2.18"

\score{
  \new Staff <<
    \set Staff.midiInstrument = "flute"
    \relative c'{
      \tempo 4=120
      \autoBeamOff
      c4 e g c | b8 a g f e4 r |
      e e d d | d8 a' g f e4 c |
      g' g fis fis | fis8 d e fis g4 r |
      g g fis fis | fis8 d e fis g2 |
      \bar "||"
      g4^"Refrain" g g2 | a8 g f a g4 r |
      e e d4. d8 | d a' g f e4 c |
      g' g g2 | a8 g f a g4 r |
      g g g4. g8 | a g a b c4 r |
      \bar "|."
    }
    \addlyrics{
      \set stanza = "1."
      Frè -- re loup, tu viens d'ou -- vrir un œil_;
      Re -- tiens bien ce que Ba -- loo t'en -- sei -- gne_:
      Tu sau -- ras com -- ment chas -- ser tout seul,
      De -- ve -- nir de nous tous le meil -- leur.
      Et s'il est tant d'é -- toiles aux cieux,
      Pour -- quoi donc n'en au -- rait_- il pas u -- ne_?
      Et s'il est tant d'é -- toiles aux cieux,
      Pour -- quoi donc n'en au -- rait_- il pas deux_?
    }
    \addlyrics{
      \set stanza = "2."
      Frè -- re loup, tu ou -- vres tes deux yeux_;
    }
  >>
  \layout{}
  \midi{}
}
