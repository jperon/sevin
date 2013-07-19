\version "2.16"
\include "italiano.ly"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4.=90
  \time 6/8
  \key fa \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueRefrain = \relative do'' {
  \partial 8*3 la8\segno sol^"Refrain" fa
  do'4 <do la>8 <do la>4 <do la>8
  <do la>4. fa8 mi re
  do4 <do la>8 <do la>4 <do la>8
  <do la>4. re8 do sib
  la4. do8 sib la
  sol4. sib8 la sol
  fa4 <fa fa'>8 <mi mi'>4 <re re'>8
  <do do'>4. la'8 sol fa
  do'4 <do la>8 <do la>4 <do la>8
  <do la>4. fa8 mi re
  do4 <do la>8 <do la>4 <do la>8
  <la do>4. re8 do sib
  la4. do8 sib la
  sol4. sib8 la sol
  fa4 <la do>8 <la fa'>4 <la do>8
  <la fa'>4 r8 \bar "||"
}

AirA = \relative do'' {
  \key do \major
  r8 sol8[(\f do])
  <sol mi'>4 <sol mi'>8 <sol mi'>4 <sol mi'>8
  <sol mi'>8[( si]) do si do la
  <fa si>4 \acciaccatura <fa si>8 <fa si>8 <fa si>4 <fa do'>8
  <fa re'>4.~ <fa re'>8 fa[( sol])
  <fa re'>4 <fa re'>8 <fa re'>4 <fa re'>8
  <fa re'>8[( do']) si la si do
  la4 \acciaccatura la8 <mi sol>8 <mi sol>4 <red fad>8
  <mi sol>4.~ <mi sol>8 sol[( do])
  <sol mi'>4 <sol mi'>8 <sol mi'>4 <sol mi'>8
  <sol mi'>8[( re']) do si do la
  <fa si>4 \acciaccatura <fa si>8 <fa si>8 <fa si>4 <fa do'>8
  <fa re'>4.~ <fa re'>8 re'[( mi])
  fa4 <la, fa'>8 <la fa'>[( mi']) re
  mi4 <sol, mi'>8 <sol mi'> re' do
  si4 \acciaccatura si8 si8 si[( la]) si
  \set Timing.measureLength = #(ly:make-moment 3 8)
  do4.\segno \bar "||"
}

AirB = \relative do'' {
  \set Timing.measureLength = #(ly:make-moment 6 8)
  \key sib \major
  re4. dod
  re4. la
  \acciaccatura {sol16[ la]} sol2.
  fa4. fa8 sib do
  re4. dod
  re4. la
  \acciaccatura {sol16[ la]} la2.
  sol4. la8 sib do
  sol4. fa
  fa'4. la,8 sib do
  sol4. fa
  re'4. fa8 mi re
  do4. re
  la4. sol
  do2.(
  dod2.)
  re4. dod
  re4. la
  sol2.
  fa4. fa8 sib do
  re4. dod
  re4. la
  la2.
  sol4. la8 sib do
  sol4. fa
  fa'4. la,8 sib do
  sol4. fa
  re'4. fa8 mi re
  do4. re
  la4. sol
  fa4 r8\segno \bar "|."
}

Refrain = \lyricmode {
  \italique
  C'est nous, les p'tits,
  Les p'tits La -- pins,
  Mi -- nois gen -- tils
  Et nez mu -- tins,
  Fa -- meux lu -- tins,
  Aux vrais ins -- tincts
  De dia -- blo -- tins,
  Pe -- tits La -- pins_!
  C'est nous, les p'tits,
  Les p'tits La -- pins,
  Aux pieds nan -- tis
  De bro -- de -- quins,
  Un peu ta -- quins,
  Pour les Pé -- kins_!
  Mais pas co -- quins,
  Pe -- tits La -- pins_!
}

CoupletI = \lyricmode {
  \roman
  \set stanza = "1."
  À nous, les fa -- ran -- do -- les,
  Les ca -- bri -- oles,
  Et les ga -- lops_;
  Les dan -- ses sur la du -- ne,
  Au clair de lune,
  Sous les bou -- leaux.
  Nous ai -- mons tou -- te cho -- se,
  Le cou -- chant rose,
  Les cieux en pleurs,
  Les gout -- tes qui dé -- fer -- lent,
  Grê -- le de perles,
  Au cœur des fleurs.
}

CoupletII = \lyricmode {
  \set stanza = "2."
  Qu'il vente ou qu'il pleu -- ve,
  Cha -- que  ma -- tin,
  Notre âme est neu -- ve,
  Nous ne per -- dons ja -- mais
  Le sou -- rire et la paix,
  Nous ne per -- dons ja -- mais la paix.
  Et, le cœur tran -- quil -- le,
  Pour nous la vie est très fa -- ci -- le,
  Pe -- tits La -- pins joy -- eux,
  Fai -- sant de no -- tre mieux,
  Sous le so -- leil {\roman et l'œil de Dieu. }
}

CoupletIII = \lyricmode {
  \set stanza = "3."
  Nos o -- reil -- les sont fi -- nes,
  El -- les de -- vinent
  Le moin -- dre bruit_:
  Nos grands yeux nous pro -- tè -- gent
  Con -- tre les pièges
  Que tend la Nuit.
  La Loi de la Bru -- yè -- re
  Gou -- verne en -- tière
  No -- tre des -- tin_:
  Le pe -- tit La -- pin brou -- te,
  Mais il é -- coute
  Le vieux La -- pin.
}

CoupletIV = \lyricmode {
  Quand nous se -- rons hom -- mes,
  Nous res -- te -- rons ce que nous som -- mes,
  Nous ne per -- drons ja -- mais
  Le sou -- rire et la paix,
  Nous ré -- pan -- drons par -- tout la paix.
  Et, le cœur tran -- quil -- le,
  N'ay -- ant sou -- ci que d'être u -- ti -- les,
  A -- ler -- tes et joy -- eux,
  Sous le so -- leil de Dieu,
  Fai -- sons tou -- jours \markup {\italic de} \markup {\italic no} -- \markup {\italic tre} \markup {\italic mieux.}
}

\score{
  \new Staff <<
    \set Staff.midiInstrument = "flute"
    { \new Voice = "refrain" {
      \override Score.PaperColumn #'keep-inside-line = ##t
      \autoBeamOff
      \MetriqueArmure
      \MusiqueRefrain
     }
    \break
    \new Voice = "airA" {
      \autoBeamOff
      \AirA
    }
    \break
    \new Voice = "airB" {
      \autoBeamOff
      \AirB
    }
    }
    \new Lyrics \lyricsto refrain {
      \Refrain
    }
    \new Lyrics \lyricsto airA {
      \CoupletI
    }
    \new Lyrics \lyricsto airA {
      \CoupletIII
    }
    \new Lyrics \lyricsto airB {
      \CoupletII
    }
    \new Lyrics \lyricsto airB {
      \CoupletIV
    }
  >>
  \layout{}
  \midi{}
}
