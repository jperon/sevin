\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 2=50
  \time 2/2
  \key fa \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueI = \relative do'' {
  la4 la fa re | sol4 sol8 fa mi4 mi |
  fa4 fa8 sol la4 la | sib4 la sol sol |
  do4 do re do8[( sib]) | re4 re do do |
  la4 la8[( sol]) fa4 la | sol4( fa) mi mi |
  re8 re re re re mi fa[( sol]) | la4.( sib8) la4 r |
  re4 re re re | do4 do8 sib do4 do |
  fa,4 fa8 sol la4 do | sol2 la4 la8 sib |
  la8 sol fa4 mi mi8 re | sol4 sol fa fa8 mi |
  re8 re re mi fa4 re8 mi | fa8[( sol]) la sib do2 |
  do4 do8 sib la4 la8 sol | la4 re,8 mi fa sol fa[( sol]) |
  la4 la8[( sol]) re4 fa8 sol | fa4 sol la la |
  mi2 re \bar "|."
}

%MusiqueII = \relative do'' {
%}

ParolesI = \lyricmode {
  Pa -- ter no -- ster, qui es in cæ -- lis,
  san -- cti -- fi -- cé -- tur No -- men tu -- um,
  ad -- vé -- ni -- at Re -- gnum tu -- um,
  fi -- at vo -- lún -- tas tu -- a
  sic -- ut in cæ -- lo et in ter -- ra.
  Pa -- nem no -- strum co -- ti -- di -- á -- num
  da no -- bis hó -- di -- e,
  et di -- mít -- te no -- bis dé -- bi -- ta no -- stra,
  sic -- ut et nos di -- mít -- ti -- mus de -- bi -- tó -- ri -- bus no -- stris,
  et ne nos in -- dú -- cas in ten -- ta -- ti -- ó -- nem,
  sed lí -- be -- ra nos a ma -- lo.
  A -- men.
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
%      \new Voice = "III" {\voiceThree
%        s2*8 \MusiqueI
%      }
    >>
  >>
  \midi{}
}
