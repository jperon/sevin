\version "2.16"
\include "italiano.ly"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4.=90
  \time 6/8
  \key sib \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
	\partial 8 fa8^"Solo"
        sib4. sib8 la sib
        do4. do8 r re
        do4 sib8 la4 sib8
        do4. r8 r fa,^"Chœur"
        sib4. sib8 la sib
        do4. do8 r re
        do4 sib8 la4 sib8
        do4. r8 r fa,^"Solo"
        sib4 do8 re4 fa8
        fa8 mib re do re do
        sib4.( re4.)
        do4. r8 r fa,
        sib4 do8 re4 fa8
        fa8 mib re do re do
        sib8 sib^"Chœur" sib sib la sol
        fa4 r8 re'4.
        do8 re do sib4. \bar "|."
}

Paroles = \lyricmode {
	Con -- nais -- sez_- vous la Sour -- ce
        De jeu -- nesse et bon -- heur_?
        
        \italique
        Con -- nais -- sez_- vous la Sour -- ce
        De jeu -- nesse et bon -- heur_?
        
        \roman
        De jeu -- nesse et bon -- heur
        Qui coule à Cha -- ma -- ran -- de,
        De jeu -- nesse et bon -- heur
        Qui coule en clair ruis -- seau
        
        \italique
        Ah_! bu -- vez de son eau,
        Scouts et Lou -- ve -- teaux_!
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
