\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 2=70
  \time 4/2
  \key la \minor
}

MetriqueArmureCouplet = {
  \time 4/4
  \tempo 4=100
  \key la \minor
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueRefrain = \relative do' {
  \partial 2
  mi4. do8^"Refrain" | la1. sold4. la8 | si1.
  fa'4. mi8 | re1. mi4. fa8 | mi1.
  mi4. do8| la1. la'4. sol8 | fa1.
  mi4. fa8 |  mi2 re do re | mi1.
  mi4. do8 | la1. la'4. sol8 | fa1.
  mi4. fa8 | mi2 re do si | la1
  \bar "||"
}

ParolesRefrain = \lyricmode {
  Sur les monts tout puis -- sants,
  On n’en -- tend que le vent,
  On ne voit que le ciel,
  On ne sent que le so -- leil_;
  Au re -- voir, au re -- voir,
  Nous al -- lons cher -- cher le vent.
}

MusiqueContreChant = \relative do' {
  r2 | r2
  la4. la8 la2 r | r2 si4. si8 si2 r | r2
  re4. re8 re2 r | r2 mi4. mi8 mi2 r | r2
  la,4. la8 la2 r | r2 fa'4. fa8 fa2
  mi4. fa8 | mi2 re do re | mi1. r2 | r2
  la,4. la8 la2 r | r2 fa'4. fa8 fa2
  mi4. fa8 | mi2 re do si | la1
}

ParolesContreChant = \lyricmode {
  Sur les monts tout puis -- sants,
  On n’en -- tend que le vent,
  On ne voit que le ciel,
  On ne sent que le so -- leil_;
  Au re -- voir, au re -- voir,
  Nous al -- lons cher -- cher le vent.
}

MusiqueCouplet = \relative do' {
  \set Timing.measurePosition = #(ly:make-moment 2/4)
  r8 do^"Couplet" si la | mi'4 mi r8 do si la | fa'4 re
  r8 re mi fa | mi4 re do re | mi2
  r8 do si la | mi'4. mi8 la4. mi8 | sol4 fa
  r8 re mi fa | mi4 re do re | mi2
  r8 do si la | mi'4. mi8 la4. mi8 | sol4 fa
  r8 re mi fa | mi4^"rit." re do si | la2
  \bar "|."
}

ParolesCouplet = \lyricmode {
  La route est du -- re sur la mon -- ta -- gne,
  Mais nous al -- lons, pleins de cou -- rage,
  Dans l’ou -- ra -- gan, nos cœurs qui chan -- tent
  Sont dé -- li -- vrés de leurs tour -- ments.
  Dans l’ou -- ra -- gan, nos cœurs qui souf -- frent
  S’en -- i -- vrent de joie et de vent.
}

\score{\transpose la do'
  \new ChoirStaff <<
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \override Score.PaperColumn #'keep-inside-line = ##t
      \MetriqueArmure
      \new Voice = "theme" {
        \MusiqueRefrain
      }
      \new Lyrics \lyricsto theme {
        \ParolesRefrain
      }
    >>
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \override Score.PaperColumn #'keep-inside-line = ##t
      \MetriqueArmure
      \new Voice = "contrechant" {
        \MusiqueContreChant
      }
      \new Lyrics \lyricsto contrechant {
        \ParolesContreChant
      }
    >>
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \override Staff.VerticalAxisGroup.remove-first = ##t
      \override Score.PaperColumn #'keep-inside-line = ##t
      \new Voice = "couplet" {
        s1*23 s2 \bar "||"
        \break
        \MetriqueArmureCouplet
        \MusiqueCouplet
      }
      \new Lyrics \lyricsto couplet {
        \ParolesCouplet
      }
    >>
  >>
  \layout{\context{\Staff \RemoveEmptyStaves}}
  \midi{}
}
