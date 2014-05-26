\version "2.16"
\include "italiano.ly"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4=100
  \time 6/8
  \key re \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
  \partial 8*3 fad8 fad sol
  fad4. mi8 mi fad
  re4. re8 mi fad
  la4 la8 sol[( fad]) mi
  \bar "||" \time 9/8
  re8[( mi fad]) mi4. mi8 fad sol
  \bar "||" \time 6/8
  si4 si8 la[( sol]) fad
  \bar "||" \time 9/8
  mi8[( fad sol]) fad4. fad8 fad fa
  \bar "||" \time 6/8
  mi4 mi8 si' si[( dod])
  la4. re8 re re
  dod4. do8 do do
  si4. sol8 fad mi
  la4 dod,8 dod[( re]) mi
  re4. \bar "|."
}

Paroles = \lyricmode {
  É -- cou -- tez_- nous, bon Saint Fran -- çois,
  C'est la pri -- è -- re des Si -- zai -- nes
  Que le grand vent bri -- seur de chê -- nes
  Jusqu' au ciel por -- te no -- tre voix_;
  \italique
  É -- cou -- tez_- nous, é -- cou -- tez_- nous,
  é -- cou -- tez_- nous, bon Saint Fran -- çois_!
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
	\Paroles
      }                       
    >>
\layout{}
\midi{}
}
