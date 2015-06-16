\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4.=90
  \time 6/8
  \key la \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
  \partial 8*4 mi8 la4 si8
  dod4 dod8 si dod re
  dod4 mi,8 la4 si8
  dod4 dod8 si dod si
  la4\fermata mi8 la4 si8
  dod4 dod8 si dod re
  dod4 mi,8 la4 si8
  dod4 dod8 si dod si
  la4 r8 si8^"Refrain" r r
  \time 9/8
  la8 r r fad4. mi4 r8
  \time 2/4
  si'8. si16 si8 si
  dod8 la si4
  mi4\accent( dod8) r\fermata
  dod8. si16 la8 si
  \time 6/8
  \acciaccatura si8 la2.~
  la8 r \bar "|."
}

Paroles = \lyricmode {
  Il é -- tait un p'tit Chef de Si -- zaine,
  Et la Si -- zaine a -- vait un Se -- cond.
  A -- près le s'cond ve -- nait le troi -- sièm',
  Trois au -- tres Loups com -- plé -- taient le rond.
  
  \italique
  Louv' -- teaux, chan -- tons
  Le Chef de Si -- zai -- ne,
  Chan -- tons le Chef et sont S'cond_!
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
