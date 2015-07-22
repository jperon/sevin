\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4=110
  \time 4/4
  \key do \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do'' {
  \partial 4
  mi4 | la,8. la16 la8 si do4 do8 re | mi4 mi re
  sol8 sol | mi2. la,8 si | do8[( re]) re2. |
  re4 re re si8 do | re4 si8[( la]) sol4
  la8 si | do4 do si sol | la4 la la
  \bar "||"

  mi'4^"Refrain" | la,4. si8 do4 do8 re | mi4 mi re
  sol8 sol | mi2. la,8 si | do8[( re]) re2. |
  re4 re re si8 do | re4 si8[( la]) sol4
  la8 si | do4 do si sol | la4 la la4
  \bar "|."
}

Paroles = \lyricmode {
  C’est un fa -- meux trois_- mâts, fin comme un oi -- seau,
  Hisse et ho_! San -- ti -- a -- no_!
  Dix_- huit nœuds, qua -- tre cents ton -- neaux_:
  Je suis fier d’y ê -- tre ma -- te -- lot.

  \italique
  Tiens bon la barre et tiens bon le vent,
  Hisse et ho_! San -- ti -- a -- no_!
  Si Dieu veut, tou -- jours droit de -- vant,
  Nous i -- rons jus -- qu’à San Fran -- ci -- sco.
}

\score{\transpose mi si,
  <<
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \new Voice = "theme" {
        \override Score.PaperColumn #'keep-inside-line = ##t
        \MetriqueArmure
        \MusiqueTheme
      }
      \new Lyrics \lyricsto theme {
        \Paroles
      }
    >>
  >>
  \layout{}
  \midi{}
}
