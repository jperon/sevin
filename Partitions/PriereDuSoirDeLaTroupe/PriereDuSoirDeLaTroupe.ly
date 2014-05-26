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
          Bon -- soir à la Trou -- pe
          Où le même a -- mour tient tous les cœurs u -- nis_;
          Bon -- soir à la Trou -- pe,
          Que tous ses en -- fants par Jé -- sus soient bé -- nis.
          
          \set stanza = "1."
          Pe -- ti -- te Sœur, pro -- té -- gez nos fou -- lards bruns et blancs,
          Et que vos Scouts par le cœur vous soient tous res -- sem -- blants.
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
