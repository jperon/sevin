\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4=100
  \time 2/4
  \key sib \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueI = \relative do'' {
  re2 | do8 sib la sib | do8 sib la sol | la2 | sib2 | do4.( la8) | do4.
  sib8 | la4 sol | la4.
  re,8 | sol4 la | sib4 la | sol4. la8 | sib4 do | re4 sol | fa4.( mib8) | re4.
  sib8 | do4 do | re2
  \bar "||"

  sol,8^"Refrain" la sib sol | sib8 do re sib |
  do8 re mib fa | mib4 do | re2 |
  sol8 fa mib re |
  do8 mib re sol |
  sol,8 la sib do | re4^"rall." re | sol,2
  \bar "|."
}

%MusiqueII = \relative do'' {
%}

ParolesI = \lyricmode {
	Par les che -- mins joy -- eux où l'a -- mour nous en -- traî -- ne,
	Dès le ma -- tin,
	Ay -- ant pour seul tré -- sor le lourd bâ -- ton de frê -- ne
	Dans no -- tre main,

	Cœur al -- lè -- gre,
	Front in -- tè -- gre,
	Sans sou -- ci des len -- de -- mains,
	Tê -- te hau -- te,
	Gais sans fau -- te,
	Nous al -- lons par les che -- mins.
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
