\version "2.12.1"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4=110
  \time 2/4
  \key do \major
}

MusiqueTheme = \relative do'' {
  do4 sol8. la16
  si2
  si4 re8. si16
  la4 fa
  mi4. mi8
  sol4 fa8. mi16
  sol4 sol
  si la8. sol16
  si4 si
  do si8. la16
  sold4 la re2
  do4 sol8. la16
  si2
  si4 re8. si16
  la4 fa
  mi4. mi8
  re4 mi8. fa16
  sol4 fa8. sol16
  la4 si
  do dod
  re do8. la16
  mi4 fad
  sol2 \bar "||"
  
  r8.^"Refrain" mi16 mi8. fa16
  sol4-- do--
  mi4-- re--
  do2
  r8. mi,16 mi8. fa16
  sol4 do
  do4 la
  si4 \bar "'" re,8. mi16
  fa4 la
  la4 sol8. fa16
  mi8. re16 mi8. fa16
  sol4 la8. si16
  do4 mi
  mi4 re8. do16
  si8. do16 re8. si16
  sol8. \bar "'" mi16 mi8. fa16
  sol4 do
  mi4 re
  do2
  r8. mi,16 mi8. sol16
  sol4 do
  do4 la
  si4 re,8. mi16
  fa4 la
  la4 sol8. fa16
  mi8. re16 mi8. fa16
  sol4 sold
  la2
  re4.\fermata sol,8
  do2 \bar "|."
}

Paroles = \lyricmode {
  Va, scout de France_! et, ton bâ -- ton en main,
  Va t'en sur la route
  Prê -- cher la loi scoute
  Aux pau -- vres du grand che -- min_!
  Va, scout de France_! et par ta belle hu -- meur,
  En -- seigne à tes frères
  La loi simple et claire,
  La loi de France et d'hon -- neur_!
  
  Tout en mar -- chant, mar -- chant, mar -- chant,
  Et par les bois et par les champs,
  Ob -- ser -- vant les terres,
  Le vol des oi -- seaux qui passent,
  Et d'où vient le vent,
  Et les cou -- leurs du cou -- chant_;
  Tout en cher -- chant, cher -- chant, cher -- chant,
  Œil grand' ou -- vert, l'o -- reille au guet,
  Rien ne doit sur -- prendre un vrai scout qui sait s'y prendre,
  Il doit ê -- tre prêt_!
}

\score{
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \new Voice = "theme" {
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
