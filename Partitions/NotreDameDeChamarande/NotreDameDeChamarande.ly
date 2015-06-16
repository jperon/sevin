\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4=50
  \time 4/4
  \key mib \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
	\partial 4 sib4^"Solo"
        mib8 mib mib4. fa8 sol lab
        \time 3/4
        do8 sib4 sib8 \bar "||" mib8^"Chœur" re
        do4. sib8 do sib
        sol8 sib4. \bar "||" sib4^"Solo"
        \time 4/4
        do8 do do4. sol8 sib sol
        \time 3/4
        fa8 mib4 mib8 \bar "||" fa4^"Chœur"
        sol4. mib8 sol8. do16
        sib2.
        mib,8. fa16 sol4. fa8
        fa4. mib4.\fermata
        \bar "|."
}

Paroles = \lyricmode {
	Ô No -- tre_- Da -- me de Cha -- ma -- ran -- de
        \italique (Le feu meurt, la fo -- rêt s'en -- dort)
        \roman Ô No -- tre_- Da -- me de Cha -- ma -- ran -- de,
        Ac -- cueil -- le tes en -- fants près de toi ré -- u -- nis.
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
