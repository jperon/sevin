\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4=100
  \time 4/4
  \key do \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
  mi8 mi la la si si do do
  la8 la do do si2
  mi,8 mi la la do do mi mi
  re8 do si do la2
  mi'8^"rit." mi mi mi sol sol mi4
  re8 re mi mi si2
  mi,8 mi la la si do si4
  mi,2
  mi8^"a tempo" mi la la do do16 do mi4
  re8 do si do la8 mi la2 r4
  \bar "|."
}

Paroles = \lyricmode {
  La ma -- man du pe -- tit hom -- me
  Lui dit un ma -- tin_:
  «_À seize ans t’es haut tout com -- me
  No -- tre huche à pain.
  À la vil -- le tu peux faire
  Un bon ap -- pren -- ti_;
  Mais pour la -- bou -- rer la ter -- re,
  T’es ben trop pe -- tit, mon a -- mi,
  T’es ben trop pe -- tit, dame oui_!_»
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
    >>
    \new Lyrics \lyricsto theme {
      \Paroles
    }
  >>
  \layout{}
  \midi{}
}
