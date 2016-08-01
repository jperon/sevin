\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4.=100
  \time 6/8
  \key sol \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueI = \relative do' {
  \repeat volta 2 {
    re8 | sol4. sol8^"Solo d'abord, puis chœur" fad sol | la4. la4 si8 | la4 sol8 fad4 sol8 | la4.~ la8 r
  }
  re,8 | sol4 la8 si4 re8 | re8 do si la si la | sol4.( si) | la4.~ la4
  re,8 | sol4 la8 si4 re8 | re8 do[( si]) la si la | sol4
  sol8 sol fad mi | re4 re8 re si' la | sol4.~ sol8 r
  \bar "|."
}

%MusiqueII = \relative do'' {
%}

ParolesI = \lyricmode {
  Vous a -- vez là, Ma -- da -- me, un bien jo -- li gar -- çon.
  Un bien jo -- li gar -- çon
  \italique
  sur les bords de la Loi -- re,
  \roman
  Un bien jo -- li gar -- çon
  \italique
  au bas du cô -- teau,
  Tout au bord de l’eau, vi -- re mon ba -- teau_!
}

\score{
  <<
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \override Score.PaperColumn #'keep-inside-line = ##t
      \MetriqueArmure
      \new Voice = "I" {%\voiceOne
        \partial 8
        \MusiqueI
      }
      \new Lyrics \lyricsto I {
        \ParolesI
      }
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
        \partial 8
        \unfoldRepeats\MusiqueI
      }
      \new Lyrics \lyricsto I {
        \ParolesI
      }
    >>
  >>
  \midi{}
}
