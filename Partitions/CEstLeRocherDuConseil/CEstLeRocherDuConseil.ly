\version "2.18"

\score {
  \new Staff <<
    \set Staff.midiInstrument = "flute"
    \relative c' {
      \key es \major
      \time 2/2
      \tempo 2=100
      \autoBeamOff
      es4 es8 es es4 c8 es8 | aes2.
      aes4 | bes bes bes aes8 bes | c2 aes4
      aes4 | bes bes bes aes8 bes | c2 aes2
      es4 es8 es es4 c8 es8 | aes2.
      es8 aes | bes4 bes8 bes bes4 c8 bes | aes2 r^"Fin" \bar "||"
      bes4 bes8 bes c4 bes8 aes | bes4 bes8 bes c4 bes8 aes | bes4
      bes8 bes c4 bes8 aes8 | <bes es>2^"D.C." \bar "|."
    }
    \addlyrics {
      C'est le ro -- cher du Con -- seil,
      Où le vieux loup vous ap -- pel -- le,
      Al -- lons, mon -- trez vo -- tre zè -- le,
      C'est le ro -- cher du Con -- seil,
      Le ro -- cher, le ro -- cher du Con -- seil.
      Les si -- ze -- niers aux a -- guets
      Nous font -- vit' ras -- sem -- bler,
      É -- cou -- tez nous hur -- ler.
    }
  >>
  \layout{}
  \midi{}
}
