\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 2=50
  \time 4/2
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueI = \relative do' {
  \key fa \major
  re4 re8 mi fa[( mi]) re4 sol8 fa mi4 fa re |
  fa4 fa8 sol la4 fa sib8 la sol[( sib]) la[( sol]) la4 |
  sib2 sol4 mi la la8[( fa]) re2 |
  sib'2 do4 sib la4.( sib8) la2 |
  sol2 mi fa mi |
  re2 fa4( sol) la2 la \bar "||"
  \key do \major
  la4 la8 si do4 la re si do8[( si]) la4 |
  fa4 fa8 sol la4 si fa fa8[( mi]) fa sol fa4 |
  re2 fa4 mi la( sol) la2 |
  re,2 fa4( sol) la4 la8[( sib]) do4 la \bar "|."
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
  mor -- tis no -- stræ. A -- men_!
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
      \new Voice = "II" {\voiceTwo
        s2*4 \MusiqueI
      }
    >>
  >>
  \midi{}
}
