\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4=100
  \time 2/4
  \key mib \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueI = \relative do'' {
  \partial 8 sib8
  sol4 fa
  mib4. sib8
  mib8 fa sol lab
  sib4 sib8 sib
  do8 do do sol
  sib4 sib8. sol16
  sol4 sib
  lab4. lab8
  lab8 lab fa' mib
  re8[( do]) sib lab
  sol8 fa mib do
  sib8[( mib]) sol sib
  sol4 fa
  mib2 \bar "||"
}

MusiqueII = \relative do'' {
  \partial 8 sib8
  mib,4 re
  mib4. sib8
  sol8 sib mib fa
  sol4 sol8 sol
  fad8 fad fad fad
  sol4 sol8. mi16
  mi4 mi
  fa4. fa8
  fa8 fa re' do
  sib8[ lab] sol fa
  mib8 re do lab
  sol4 sib8 sib
  do4 re
  mib2
}

Paroles = \lyricmode {
  Comme un en -- fant,
  Je veux a -- voir un rê -- ve,
  Qui cha -- que jour s'é -- lè -- ve,
  Comme un en -- fant,
  Je vou -- drais que mon â -- me
  Se ré -- chauffe à sa flam -- me
  Comme un en -- fant.
}

\score{
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \new Voice = "theme" {\voiceOne
	\override Score.PaperColumn #'keep-inside-line = ##t
	\MetriqueArmure
	\MusiqueI
      }
      \new Voice = "accompagnement" {\voiceTwo
	\override Score.PaperColumn #'keep-inside-line = ##t
	\MusiqueII
      }
      \new Lyrics \lyricsto theme {
	\Paroles
      }                       
    >>
\layout{}
\midi{}
}
