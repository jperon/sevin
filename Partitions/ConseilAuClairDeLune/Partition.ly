\version "2.18"

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

I = \relative c'{
  \partial 4
  d4 | g4. g8 | fis8 g a b | g2 | d4
  b' | b4. b8 | a8 b c b | a8. d16 d8 d | d2~ | d8 r
  \repeat volta 2 {
    b4 | g b | g8. g16 fis8 g | e4.(a8) | a
    g fis e | d4. d'8 | d4. c8 | b2~ | b8 r
  }
}

II = \relative c'{
  \partial 4
  s4 | s2 | s | s | s4
  d4 | g4. g8 | fis g a g | fis8. fis16 e8 e | d2~ | d8 r

  \repeat volta 2 {
    d4 | g fis | e8. e16 d8 d | c4.(b8) | c
    b c cis | d4. e8 | fis4. d8 | g2~ | g8 r
  }
}

Paroles = \lyricmode {
  Ô loups, cou -- rons, cou -- rons en fou -- le
  Il faut ou -- vrir tout grands les yeux,
  Tout grands les yeux.
  C'est le vieux loup qui nous é -- cou -- te,
  Al -- lons cri -- ons_: \italique «_De no -- tre mieux_».
}

\score{
  \new Staff{
   <<
      \set Staff.midiInstrument = "flute"
      \new Voice = "I" {
        \tempo 4=120
        \autoBeamOff
        \voiceOne
        \key g \major
        \time 2/4
        \I
      }
      \new Lyrics \lyricsto I {
        \Paroles
      }
    \new Voice = "2" \relative c'{
      \autoBeamOff
      \voiceTwo
      \II
    }
  >>
  }
  \layout{}
}

\score{
  \new Staff{
   <<
      \set Staff.midiInstrument = "flute"
      \new Voice = "I" {
        \tempo 4=120
        \autoBeamOff
        \voiceOne
        \key g \major
        \time 2/4
        \unfoldRepeats\I
      }
      \new Lyrics \lyricsto I {
        \Paroles
      }
    \new Voice = "2" \relative c'{
      \autoBeamOff
      \voiceTwo
      \unfoldRepeats\II
    }
  >>
  }
  \midi{}
}
