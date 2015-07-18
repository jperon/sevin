\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4=130
  \time 4/4
  \key sol \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
  \partial 4 r8 re
  re8 sol sol sol sol4 r8 sol
  fad8 la la la la4 \bar"'" \break r8 la
  sol8 si si si si la do la
  sol4 fad sol r
  \bar "||"
  re8^"Refrain" sol sol sol sol4 r8 sol
  fad8 la la la la4 r
  sol8 si si si si la do la
  sol4 fad sol
  \bar "|."
}

Paroles = \lyricmode {
  Il é -- tait u -- ne chèvre de fier tem -- pé -- ra -- ment,
  Qui re -- ve -- nait d’Es -- pagne et par -- lait al -- le -- mand.

  \italique
  Bal -- lo -- tant d’la queue et gri -- gno -- tant des dents,
  Bal -- lo -- tant d’la queue et gri -- gno -- tant des dents.
}

\score{
  <<
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \new Voice = "theme" {
        \override Score.PaperColumn #'keep-inside-line = ##t
        \MetriqueArmure
        \MusiqueTheme
      }
    >>
    \new Lyrics \lyricsto theme {
      \Paroles
    }
  >>
  \layout{}
  \midi{}
}
