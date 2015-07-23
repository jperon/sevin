\version "2.18"

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

\score {
  \new Staff <<
    \set Staff.midiInstrument = "flute"
    \relative c'' {
      \autoBeamOff
      \tempo 4=120
      \time 2/4
      \partial 8
      g8 | c g e g | c4 g8 g | g4 f8 e | d4 r8
      g8 | c g e g | c4. c8 | d c b a | g4 c | b a | g c | b a | g
      \bar "||"
      e8^"Refrain" g | g4 f8 a | a4 b8. b16 | b8 g c c | c4
      e,8 g | g4 f8 a | a4 b8. b16 | b8 g c c | c4 r8
      \bar "|."
    }
    \addlyrics {
      Ja -- dis un pe -- tit d'homm'
      \italique
      Ya -- ou de no -- tre mieux
      \roman
      Ja -- dis un pe -- tit d'homm'
      Fut trou -- vé près d'un feu.
      \italique
      De no -- tre mieux,
      De no -- tre mieux_!
      \roman
      Un p'tit loup n's'é -- cout' pas
      Mais il é -- cout' les vieux loups
      Un p'tit loup n's'é -- cout' pas
      Mais il é -- coute A -- ké -- la_!
    }
  >>
  \layout{}
  \midi{}
}
