\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4.=80
  \time 6/8
  \key do \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueRefrain = \relative do' {
  r4. mi4 sol8
  sol8 fa mi re do re
  do8. do16 do8 re8 do re
  mi4 mi8 sol fa mi
  re2.
  r4. mi4 sol8
  sol8 fa mi re do re
  do8. do16 do8 re8 do re
  mi4 mi8 re do re
  do2.^"Fin"
  \bar"||"
}

MusiqueCouplet = \relative do' {
  r4. mi8 do mi
  sol4 sol8 mi do mi
  sol4 sol8 mi do re
  mi4. sol8 fa mi
  re2.
  r4. mi8 do mi
  sol4 sol8 mi do mi
  sol4 sol8 mi do re
  mi4 mi8 re do re
  do2.^"D.C."
  \bar "|."
}

ParolesRefrain = \lyricmode {
  Che -- va -- liers, sa -- lu -- ons les cou -- leurs,
	Son -- ne, sonne, é -- clai -- reur, son -- ne les hon -- neurs.
	Son -- ne bien, son -- ne de tout ton cœur !
	Son -- ne, sonne, é -- clai -- reur, son -- ne les hon -- neurs.
}

ParolesCouplet = \lyricmode {
	Pour nous c’est fê -- te,
	Quand, sur nos tê -- tes,
	No -- tre dra -- peau
	Flot -- te bien haut.
	Quand vien -- dra l’om -- bre
	Et la nuit som -- bre,
	Ses plis sa -- crés
	Se -- ront re -- pli -- és.
}

\score{
  <<
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \transpose do re
      \new Voice = "theme" {
        \override Score.PaperColumn #'keep-inside-line = ##t
        \MetriqueArmure
        \MusiqueRefrain
        \MusiqueCouplet
      }
    >>
    \new Lyrics \lyricsto theme {
      \ParolesRefrain
      \ParolesCouplet
    }
  >>
  \layout{}
}

\score{
  <<
    \new Staff <<
      \set Staff.midiInstrument = "french horn"
      \set Staff.autoBeaming = ##f
      \transpose do re
      \new Voice = "theme" {
        \override Score.PaperColumn #'keep-inside-line = ##t
        \MetriqueArmure
        \MusiqueRefrain
        \MusiqueCouplet
        \MusiqueRefrain
      }
    >>
    \new Lyrics \lyricsto theme {
      \ParolesRefrain
      \ParolesCouplet
      \ParolesRefrain
    }
  >>
  \midi{}
}
