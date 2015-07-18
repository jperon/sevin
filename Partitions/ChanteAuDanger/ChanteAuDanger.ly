\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4=120
  \time 2/4
  \key la \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do'' {
  la4 la8 la
  la4. mi8
  la8 si dod si
  la4 la8 la
  re4 re
  dod4. dod8
  si4 si
  si4~ si8 r
  la4 la8 la
  la4. mi8
  la8 si dod si
  la4 la8 la
  re4 re
  dod4. dod8
  si4 si
  si4~ si8 r
  \bar "||"
  mi4^"Refrain" mi8 dod
  la4 la
  re8. mi16 re8. dod16
  si4 si8 r
  la8 dod si la
  sold4 la8. si16
  dod4-^ si-^
  la4-^ r
  \bar "|."
}

MusiqueAcc = \relative do'' {
  la4 la8 la
  la4. mi8
  la8 si dod si
  la4 la8 la
  fad4 si
  mi,4. la8
  sold4 la8[( fad])
  mi4~ mi8 r
  la4 la8 la
  la4. mi8
  la8 si dod si
  la4 la8 la
  si[( la]) sold[( fad])
  mid4. fad8
  la4 sold8[( fad])
  sold4~ sold8 r

  mi4 fad8 sold
  la4 la8[( sold])
  fad8. mi16 fad8. la16
  la4 sold8 r
  la8 dod si la
  sold4 la8. la16
  la4 mi
  la4 r
}

Paroles = \lyricmode {
  «_Chante au dan -- ger et sou -- ris dans la pei -- ne_»,
  Telle est la loi des Scouts vail -- lants,
  Et, sans fai -- blir, sur la grand' route hu -- mai -- ne,
  Les yeux bien clairs, ils vont gaî -- ment.

  Va, fils de France, et, sans tour -- ner la tê -- te,
  Droit sur l'a -- ve -- nir fi -- xe ton re -- gard.
}

\score{
  <<
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \new Voice = "theme" {\voiceOne
        \override Score.PaperColumn #'keep-inside-line = ##t
        \MetriqueArmure
        \MusiqueTheme
      }
      \new Voice = "accompagnement" {\voiceTwo
        \override Score.PaperColumn #'keep-inside-line = ##t
        \MetriqueArmure
        \MusiqueAcc
      }
      \new Lyrics \lyricsto theme {
        \Paroles
      }
    >>
  >>
  \layout{}
  \midi{}
}
