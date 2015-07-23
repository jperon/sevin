\version "2.18"

\score{
  \context Staff{
    <<
      \set Staff.midiInstrument = "flute"
      \new Voice = "1" \relative c'{
        \tempo 4.=80
        \autoBeamOff
        \time 6/8
        \key g \major
        \partial 4.
        \voiceOne
        d4 g8 | fis4^"Refrain" a8 g fis e | d4 d8 d4 g8 | fis4 a8 a g fis | g4. \bar "||"
        b4^"Couplet" c8 | d4 d8 d[( c]) b | a4. b4 c8 | d4 d8 d[( c]) b | a4. \bar "|."
      }
      \addlyrics {
        Frè -- re loup dans no -- tre si -- zai -- ne,
        Frè -- re loup, sois le bien -- ve -- nu.

        \set stanza = "1."
        Pat -- tes ten -- dres et vieux loups,
        Tu pour -- ras comp -- ter sur nous.
      }
      \context Voice = "2" \relative c''{
        \voiceTwo
        s4. | s2. | s | s | s4.
        g4 a8 | b4 b8 b[ a] g | d4. g4 a8 | b4 b8 b[ a] g | d4.
      }
    >>
  }
  \layout{}
  \midi{}
}
