\version "2.18"

chant=\relative c' {
  \key c \major
  \partial 2
  \autoBeamOff
  \tempo 4=120
  c4 c8. e16 | g4~ g8. a16 g4~ g8. f16 | e4 c4
  c4 c8. e16 | g4~ g8. a16 d,4~ d8. e16 | c4 r
  c4 c8. e16 | g4~ g8. a16 g4~ g8. f16 | e4 c4
  c4 c8. e16 | g4~ g8. a16 d,4~ d8. e16 | c4 r
  \bar "||"

  r4 c8^"Refrain" c8 | a'2 a8 c b a | g[ e] g2
  \times 2/3 {e8 e e} \time 2/4 d8 d c g \time 4/4
  c4 \times 2/3 {e8 e e} d4 g | e4 \times 2/3 {e8 e e} d d c g |
  c4 \times 2/3 {e8 e e} d4 g | c,2 \bar "|."
}
paroles=\lyricmode{
  Te voi -- là donc at -- teint par l’â -- ge
  De t’en al -- ler de nos li -- teaux.
  La pis -- te neuve où tu t’en -- ga -- ges
  T’em -- mè -- ne loin des lou -- ve -- teaux.
  Et pour -- tant tous les loups te cri -- ent_:
  Fa -- veur de Jun -- gle, va de -- vant
  Sur les nou -- vel -- le piste.
  Fa -- veur de Jun -- gle, va de -- vant
  Sur les che -- mins nou -- veaux.
}
\score{\transpose c f
	\new Staff{\chant}
	\addlyrics {\paroles}
  	\layout{}
}
\score{\transpose c f
	\new Staff{\set Staff.midiInstrument = "flute" \chant}
	\addlyrics {\paroles}
	\midi{}
}
