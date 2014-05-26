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
  sol8 sol sol lab4 lab8
  sib8[( lab]) sol fa sol lab
  sib8[( mib,]) lab sol4 fa8
  mib4.~ mib4 r8
  sol8 sol sol lab4 lab8
  sib8[( lab]) sol fa sol lab
  sib8[( mib,]) lab sol4 fa8
  mib4.~ mib4 sib'8
  sib8[( sol]) sib\< mib4\! sib8
  sib8[( sol]) sib sib4 sib8
  do4 sib8 sib[( lab]) sol^\markup {\italic rit.}
  sol4. fa
  sol8 sol sol lab4 lab8
  sib8[( lab]) sol fa sol lab
  sib8[( mib,]) lab^\markup {\italic rit.} sol4 fa8
  mib4.~ mib4 r8 \bar "|."
}

ParolesIa = \lyricmode {
  \set stanza = "1."
  Au vent du soir la plaine on -- du -- le
  Comme u -- ne vas -- te mer.
  Dans la dou -- ceur du cré -- pus -- cu -- le
  S'é -- lè -- ve l'as -- tre clair.
  L'ap -- pel du cor
  Ré -- sonne en -- cor
  Et par les airs se traî -- ne_;
  Seu -- le mur -- mu -- re la fon -- tai -- ne,
  Au nid l'oi -- seau s'en -- dort.
}

ParolesIb = \lyricmode {
  \set stanza = "1."
  La ville en fièvre et ses u -- si -- nes
  É -- tei -- gnent leur ru -- meur_;
  Sur les ro -- chers, des mers voi -- si -- nes
  Plus cal -- me le flot meurt,
  Au fir -- ma -- ment
  Tout dou -- ce -- ment
  S'é -- veil -- lent les lu -- miè -- res,
  Sur les vil -- las, sur les chau -- miè -- res
  La paix du ciel des -- cend.
}

\score{
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \new Voice = "theme" {
	\override Score.PaperColumn #'keep-inside-line = ##t
	\MetriqueArmure
	\MusiqueTheme
      }
      \new Lyrics \lyricsto theme {
	\ParolesIa
      }
      \new Lyrics \lyricsto theme {
	\ParolesIb
      }
    >>
\layout{}
\midi{}
}
