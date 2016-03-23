\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 2.=40
  \time 3/4
  \key fa \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueI = \relative do' {
  fa8[( do]) la'2 | sol8[( do]) sib'2 | la4( sol) fa | fa4 mi2 |
  re'4( do8[ sib]) la[( sol]) | do4.( sib8) la4 | la8[( sol] fa4 mi | fa2. |
  \bar "||"
  
  do2. | do2. | do4( sib) la | la4 sol2 |
  re'4 re2 | do4 do2 | do8[( sib] la4 sol | fa2. |
  \bar "||"
  
  fa2. | mi2. | fa4.( sol8) la[( sib]) | do4 do,2 |
  sib'4 sib2 | la4 la2 | mi8[( sol] do4 do,) | fa2. |
  \bar "|."
}

%MusiqueII = \relative do'' {
%}

ParolesI = \lyricmode {
  Do -- na no -- bis pa -- cem, pa -- cem,
  do -- na no -- bis pa -- cem.
  
  Do -- na no -- bis pa -- cem,
  do -- na no -- bis pa -- cem.
  
  Do -- na no -- bis pa -- cem,
  do -- na no -- bis pa -- cem.
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