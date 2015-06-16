\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4.=60
  \time 6/8
  \key mib \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do'' {
	sol4.\p fa8 sol fa
        mib4. sib
        mib4 fa8 sol4 sib8
        sib8 lab sol fa mib sol
        fa4. r4.
        sol4. fa8 sol fa
        mib4. sib
        mib4 fa8 sol4 sib8
        sib8 lab sol fa mib fa
        mib4. r4.
        sib'8\f lab sol sib lab sol
        fa8 lab sol mib sol fa
        sib,2.
        sib'8 lab sol sib lab sol
        fa8 lab sol mib sol fa
        sib,2. \bar "|."
}

Paroles = \lyricmode {
	Bon -- soir, Cha -- ma -- ran -- de,
        Où la paix du ciel tient tous les cœurs u -- nis_;
        Bon -- soir, Cha -- ma -- ran -- de_:
        Les jours qu'on y passe à ja -- mais sont bé -- nis.
        
        \set stanza = "1."
        Ô Saint Lou -- is, dans ces bois où vos lis ont fleu -- ri,
        En -- sei -- gnez_- nous à ser -- vir no -- ble -- ment Jé -- sus_- Christ.
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
