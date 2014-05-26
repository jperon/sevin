\version "2.16"
\include "italiano.ly"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4=100
  \time 6/8
  \key do \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
  mi8. sol16 mi'8 re4 do8
  mi,8. sol16 do8 si4. \breathe
  fa8. sol16 fa'8 mi4 re8
  re8. do16 la8 sol4. \breathe
  mi8. sol16 mi'8 re4 do8
  mi,8. sol16 do8 si4 la8^\markup {\italic rall.}
  sol8[( do]) fa mi4\fermata mi8
  re8 la si do4. \bar "|."
}

ParolesI = \lyricmode {
  \set stanza = "1."
  L'au -- ro -- re clai -- re
  Sou -- rit aux cieux.
  L'â -- me lé -- gère,
  Ou -- vrez vos grands yeux,
  À perdre ha -- lei -- ne
  En ga -- lops fous
  Cou -- rez la plai -- ne,
  Cou -- rez mes Loups_!
}

ParolesII = \lyricmode {
  \set stanza = "2."
  Que nul nu -- a -- ge
  As -- som -- bris -- sant
  Ne vous ou -- trage,
  Ô fronts in -- no -- cents.
  Un charme at -- ti -- re
  Les cœurs vers vous,
  Vo -- tre sou -- ri -- re_:
  Ri -- ez, mes Loups_!
}

\score{
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \new Voice = "theme" {
	\override Score.PaperColumn #'keep-inside-line = ##t
	\autoBeamOff
	\MetriqueArmure
	\MusiqueTheme
      }
      \new Lyrics \lyricsto theme {
	\ParolesI
      }
      \new Lyrics \lyricsto theme {
	\ParolesII
      }
    >>
\layout{}
\midi{}
}
