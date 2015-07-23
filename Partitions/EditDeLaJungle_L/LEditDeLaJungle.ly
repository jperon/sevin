\version "2.18"

\score {
  \new Staff <<
   \relative c' {
     \partial 4
     \tempo 4=120
     \key g \major
     \time 4/4
     \autoBeamOff
     d4 g d8. d16 d4 fis8. g16 | a4 d, r
     a'8. a16 | a4 fis8. e16 d4 fis8. a16 | g4 r r
     d4 |g d8. d16 d4 fis8. g16 | a4 d, r
     a'8. a16 | a4 fis8. e16 d4 fis8. a16 | g4 r r
     b8 b | b4 fis8 g a4 g8 fis | g4 e r
     a8 a | a4 e8 fis g4 fis8 e | d4 r r
     d8. d16 | g4 d8. d16 d4 fis8. g16 | a4( d,) r
     a'8. a16 | a4 fis8. e16 d4 fis8. a16 | g2 r4 \bar "|."
   }
   \addlyrics {
     Ce -- ci c'est l'é -- dit de la Jun -- gle,
     Au -- si vrai, aus -- si vieux que le ciel.
     Les loups qui l'ob -- ser -- vent en vi -- vent,
     Mais le loup qui l'en -- freint en mour -- ra.
     Com -- me la li -- ane au -- tour de l'ar -- bre,
     La Loi pas -- se der -- rière et de -- vant.
     Car la for -- ce du clan c'est le loup
     Et la for -- ce du loup c'est le clan.
   }
  >>
  \layout{}
  \midi{}
}
