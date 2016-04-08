\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4.=60
  \time 6/8
  \key do \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueI = \relative do' {
  \partial 8
  mi8 | mi8[( la]) si do4 si8 | sol4. la4
  mi8 | mi8[( la]) si do[( si]) sol | la4.~ la8 r
  mi8 | mi8[( la]) si do[( si]) do | re8
  do8 si la4 si16[( la] | sol4.) mi~ | mi4.~ mi8 r
  mi8 | mi8[( la]) si do[( si]) do | re4.~ re8
  do4 | la4 si16[( la] sol4.) | la4.\fermata r4 \bar "|."
}

%MusiqueII = \relative do'' {
%}

ParolesI = \lyricmode {
  Vo -- yez, ô No -- tre_- Da -- me,
  Vos en -- fants de -- vant vous.
  Ils vien -- nent vous pri -- er,
  \italique
  Gra -- ti -- a ple -- na :
  \roman
  Vous les é -- cou -- te -- rez,
  \italique
  Ma -- ter al -- ma.
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
  \midi{}
}
