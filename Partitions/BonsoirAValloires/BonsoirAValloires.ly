\version "2.16"
\include "italiano.ly"

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
	Bon -- soir à Val -- loi -- res
	Où la paix du ciel tient tous les cœurs u -- nis_;
	Bon -- soir à Val -- loi -- res,
	Les jours qu'on y passe à ja -- mais sont bé -- nis.
        
        \set stanza = "1."
        Ô Saint Ber -- nard dont les fils ont vé -- cu dans ce lieu,
	Dai -- gnez bé -- nir les en -- fants qu'y re -- çoit le Bon Dieu.
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
