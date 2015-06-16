\version "2.12.1"
\language "français"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4=76
  \time 2/4
  \key do \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

MusiqueTheme = \relative do'' {
	\partial 8 sol8
	sol8 si si sol
	sol8 si si sol
	sol8 si si sol
	sol8 si16 si si8 sol
	sol8 si si la16 la
	sol4 mi
	mi4. r8
	si'4.. si16
	si8. la16 si8. do16
	re4. si16 si
	la2\fermata
	si4.. si16
	si8. la16 si8. do16
	re4( re16) si si la
	\partial 8*3 sol4.\fermata \bar "||" \break
	\time 6/8 sol4.\fermata si^"Pour finir"
	re4 si8 sol4 si8
	re,4. re4 re8
	sol2. \bar "|."
}

Paroles = \lyricmode {
	Des -- sous la tente, au ras du sol,
	Ti -- hou, ti -- hou, ti -- re, ti -- li -- re,
	Ti -- hou, ti -- hou, ti -- re -- li -- re _
	Leur chan -- son a pris son vol,
	Ti -- ho -- hou_!
	Leur chan -- son a pris son vol,
	Ti -- ho -- ho -- hou_!
	
	ho -- ou -- ou.
}

\score{
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \new Voice = "theme" {
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
