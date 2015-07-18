\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4=100
  \time 2/4
  \key do \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do'' {

}

%MusiqueAcc = \relative do'' {
%}

Paroles = \lyricmode {

}

\score{
  <<
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \new Voice = "theme" {%\voiceOne
        \override Score.PaperColumn #'keep-inside-line = ##t
        \MetriqueArmure
        \MusiqueTheme
      }
%      \new Voice = "acc" {\voiceTwo
%        \override Score.PaperColumn #'keep-inside-line = ##t
%        \MetriqueArmure
%        \MusiqueAcc
%      }
      \new Lyrics \lyricsto theme {
        \Paroles
      }
    >>
  >>
  \layout{}
  \midi{}
}
