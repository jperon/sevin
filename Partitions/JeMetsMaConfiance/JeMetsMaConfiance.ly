\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4=80
  \time 3/4
  \key sol \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
  \partial 4
  mi4 | si'4. si8 fad sol | la4 la8 r
  mi4 | sol4. la8 fad sol | mi4 r
  mi4 | si'4. si8 fad sol | la4 la8 r
  mi4 | sol4. la8 fad sol | mi4 r
  mi4 | fad4. sol8 mi fad | sol4 fad8 r
  sol4 | la4. sol8 fad mi | mi4( re8) r
  mi4 | fad4. sol8 mi fad | sol4 fad8 r
  sol4 | mi4. fad8 mi re | mi2\fermata
  \bar "|."
}

Paroles = \lyricmode {
  Je mets ma con -- fi -- an -- ce,
  Vierge, en vo -- tre se -- cours_;
  Ser -- vez_- moi de dé -- fen -- se,
  Pre -- nez soin de mes jours.
  Et quand ma der -- nière heu -- re
  Vien -- dra fi -- xer mon sort,
  Ob -- te -- nez que je meu -- re
  De la plus sain -- te mort.
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
