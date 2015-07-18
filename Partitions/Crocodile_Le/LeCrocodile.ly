\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4=120
  \time 4/4
  \key sol \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do'' {
  sol4 sol8. si16 re4. do8
  si8 la si do si4 la
  la4 la8. si16 la4. la8
  si8 la si dod re4 r
  sol,4 sol8. si16 re4. do8
  si8 la si do si4 la
  la4 la8. si16 la4. la8
  si8 la si dod re4 r

  \repeat volta 2 {
    sol,8^"Refrain" si si si sol si si si
    sol8 si si si do4 la
    fad8 la la la fad la la la
  }
  \alternative {
    {re8 do si la si4 r}
    {re8 do si la sol4 r}
  }
  \bar "|."
}

Paroles = \lyricmode {
  Un cro -- co -- dile, s’en al -- lant à la guer -- re,
  Di -- sait a -- dieu à ses pe -- tits en -- fants.
  Traî -- nant ses pieds, ses pieds dans la pous -- siè -- re,
  Il s’en al -- lait com -- battr’ les é -- lé -- phants.

  Ah_! Les cro, cro, cro, les cro, cro, cro, les cro -- co -- di -- les_!
  Sur les bords du Nil ils sont par -- tis, n’en par -- lons plus,
  -tis, n’en par -- lons plus.
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
}

\score{
  <<
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \new Voice = "theme" {
        \override Score.PaperColumn #'keep-inside-line = ##t
        \MetriqueArmure
        \unfoldRepeats{\MusiqueTheme}
      }
    >>
    \new Lyrics \lyricsto theme {
      \Paroles
    }
  >>
  \midi{}
}
