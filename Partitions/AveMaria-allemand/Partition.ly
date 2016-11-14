\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4=100
  \time 4/4
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueI = \relative do'' {
  \key fa \major
  \partial 2
  la4 la8 la | sol4 sol fa fa8 fa | mi4 mi
  re4 re8 mi | fa4 do la' la | sol4 sol
  fa4 sol | la4 fa sib la | la4 r
  re,4 re8[ do] | re4 re8[ do] re4
  mi8[ fa] | do2 sol'4 sol |
  sol4 sol sol( fa8[ sol]) | la4 r
  la4 la8 la | sol4 sol fa fa | mi4 mi
  re4 re8 mi | fa4 do re re | re4 do8[ sib] do2 |
  la'4 la8 sol fa4 fa |
  la4 sib do la | re4( do8 sib]) do4 r | sol4( fa8[ mi]) fa2
  \bar "|."
}

%MusiqueII = \relative do'' {
%}

ParolesI = \lyricmode {
  A -- ve Ma -- rí -- a, grá -- ti -- a ple -- na,
  Dó -- mi -- nus te -- cum, be -- ne -- dí -- cta tu
  in mu -- li -- é -- ri -- bus
  et be -- ne -- dí -- ctus
  fru -- ctus ven -- tris
  tu -- i Ie -- sus.
  San -- cta Ma -- rí -- a, Ma -- ter De -- i,
  o -- ra pro no -- bis pec -- ca -- tó -- ri -- bus,
  nunc et in ho -- ra
  mor -- tis no -- stræ. A -- men_! A -- men_!
}

\score{
  <<
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \override Score.PaperColumn #'keep-inside-line = ##t
      \MetriqueArmure
      \new Voice = "I" {%\voiceOne
        \MusiqueI
      }
      \new Lyrics \lyricsto I {
        \ParolesI
      }
%      \new Voice = "II" {\voiceTwo
%        \MusiqueII
%      }
    >>
  >>
  \layout{}
}

\score{
  <<
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \override Score.PaperColumn #'keep-inside-line = ##t
      \MetriqueArmure
      \new Voice = "I" {%\voiceOne
        \MusiqueI
      }
      \new Lyrics \lyricsto I {
        \ParolesI
      }
%      \new Voice = "II" {\voiceTwo
%        s2*4 \MusiqueI
%      }
    >>
  >>
  \midi{}
}
