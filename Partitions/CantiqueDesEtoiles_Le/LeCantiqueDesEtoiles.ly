\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 2.=70
  \time 3/4
  \key fa \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do'' {
  la4 la^\markup {\italic {Bien rythmé}} sol
  fa2 do'4
  fa2 do4
  re4 la sib
  do4 fa, sol
  la2 do4
  la4 sol2
  fa2.
  fa'4 fa mi
  re2 do4
  fa4^\markup {\italic rit.} re2
  do2.
  la4^\markup {\italic Tempo} la sol
  fa2 sol4
  la2 sib4
  do2 do4
  la4 la sol
  fa2 do'4
  fa2 do4
  re4 la sib
  do4 fa, sol
  la2^\markup {\italic rall.} do4
  la4 sol2
  fa2. \bar "|."
}

Paroles = \lyricmode {
  Ad -- mi -- rons, frè -- res, l'har -- mo -- nie
  In -- fi -- ni -- e
  Des as -- tres du ciel bleu.
  Fai -- sons mon -- ter vers le bon Dieu
  Notre o -- rai -- son qu'il a bé -- ni -- e
  Ad -- mi -- rons, frè -- res, l'har -- mo -- nie
  In -- fi -- ni -- e
  Des as -- tres du ciel bleu.
}

\score{
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
\layout{}
\midi{}
}
