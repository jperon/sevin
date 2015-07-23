\version "2.18"

\score {\transpose f d
  \new Staff {
    \set Staff.midiInstrument = "flute"
    \relative c''{
      \tempo 2=90
      \partial 2
      \time 2/2
      \key f \major
      \autoBeamOff
      a4 a | f c' c c | a2 c4 f, | g a g2 | f4 r
      a4 a | f c' c c | a2 c4 f, | g a g2 | f4 r
      f'4 f | e e d d | c2 c4. d8 | c4 bes bes c | a
      a8 bes c4 c | c a8 bes c4 c | c a8 bes c4 a8 bes | c4 a8 bes c4 c | d2 c2
      f,4 g a bes | g2 f4 r |
      \bar "|."
    }
    \addlyrics {
      Oui c'est nous les Lou -- ve -- teaux,
      pe -- tits Loups de Fran -- ce.
      Bonne o -- reille et fin mu -- seau,
      œil vif et dents blan -- ches.
      Qui pré -- ten -- dais que les loups,
      ne se trou -- vaient plus chez nous_?
      Des loups de ja -- dis voi -- ci tous les fils,
      Nous cher -- chons, nous trou -- vons, nous sui -- vons leur tra -- ces
      Pour par -- tir en chas -- se_!
    }
  }
  \layout{}
  \midi{}
}
