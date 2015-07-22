\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4=120
  \time 4/4
  \key sib \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
  \partial 8*3 do8 fa sol
  la4. r8 r8 la8 do fa,
  la4. r8 r8 la8 sib la
  sol4. r8 r8 sol la si
  do4. r8 r8 do,8 fa sol
  la4. r8 r8 la8 do fa,
  la4. r8 r8 la8 sib la
  sol4. r8 r8 sol la si
  do2 r4
  \bar "||"
  do,4^"Refrain"
  fa2 fa4 sol
  la2 fa4 fa8 sol
  la2 sib4 la
  sol2 r4 sol8 la
  sib2 re4 re
  do2 la4 la8 la
  sol2 do,4 sol'
  fa2 r8
  \bar "|."
}

Paroles = \lyricmode {
  Chez l’bou -- lan -- ger_:
  Fais_- moi cré -- dit_!
  N’aie donc pas peur,
  J’paie -- rai sam' -- di_!
  Si tu n’veux pas
  M’don -- ner du pain,
  J’te fourre la tête
  Dans ton pé -- trin.

  Je cher -- che for -- tu -- ne
  Tout au -- tour du \italique Chat Noir_;
  \roman
  Et au clair de la lu -- ne,
  À Mont -- mar -- tre le soir.
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
