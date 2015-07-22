\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4=110
  \time 2/4
  \key fa \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueI = \relative do' {
  r4 do | fa4^"Refrain" fa8. fa16 | fa8. sol16 la8. sol16 | fa4 r |
  r4 do | fa4 fa8. fa16 | fa8. la16 sol8. fa16 | sol4 r |
  r4 la | sol4 sol8. fa16 | mi8. fa16 sol8. la16 | sol4 r |
  r4 la | sol4 sol8. la16 | sol8. fa16 mi8. re16 | do4 r |
  \repeat volta 2 {r4 do | fa4 fa8. fa16 | fa4 do | fa4 r}

  r4 fa8^"Couplet" sol | la4 la8 sol | fa4 fa8 mi | re2 |
  r4 sol8 la | sib4 sib8 la | sol4 sol8 fa | mi2 |
  r4 mi4 | fa4 mi | fa4 sol | la2 | re,4
  re4 | fa4 fa | mi4 mi | re2
  \bar "|."
}

ParolesI = \lyricmode {
  A -- mi, re -- joins_- nous sur le che -- min,
  Por -- tant ton far -- deau a -- vec en -- train_;
  Quit -- te la pau -- vre -- té du con -- fort
  Re -- çois les ri -- ches -- ses de l’ef -- fort_!
  Mar -- chons, en a -- vant mar -- chons.

  \set stanza = "1."
  Quand tu crois que tu es seul au monde,
  I -- so -- lé dans la nuit sans se -- cours,
  Ap -- por -- te_- nous ta char -- ge,
  Nous la par -- ta -- ge -- rons.
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
