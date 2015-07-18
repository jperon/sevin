\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4=130
  \time 2/4
  \key do \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
  \partial 4 mi8. fa16
  sol4 do,
  fa8. mi16 fa8. la16
  sol2
  mi4 sol
  fa4. mi8
  re4 la'
  sol4. fa8
  mi4 mi8. fa16
  sol4 do,
  fa8. mi16 fa8. la16
  sol2
  mi4^"rit." sol8 la
  si4 re8 do
  si4 si8 la
  sol2\fermata
  \bar "||"
  r8 do^"Refrain - a tempo" do si
  la4 fa
  do'4 si8 la
  sol4 mi4
  r8 la8 la sol
  fa4. re8
  la'8 la sol fa
  mi2
  r8 do' do si
  la4 fa
  do'4 si8 la
  sol4 mi4
  la4. sol8
  fa4. re8
  fa8 fa mi re
  do2\fermata
  \bar "|."
}

%MusiqueAcc = \relative do'' {
%}

Paroles = \lyricmode {
  Le ma -- tin tout res -- plen -- dit, tout chan -- te.
  La ter -- re rit, le ciel flam -- boie.
  Mais pour nous, qu’il ton -- ne, pleuve ou ven -- te,
  De tous temps nous chan -- tons no -- tre joie.

  Car cha -- que jour est un jour de fê -- te.
  Dans no -- tre cœur, un so -- leil luit tou -- jours.
  Plei -- ne de joie, d’é -- lan et d’a -- mour,
  No -- tre chan -- son se lè -- ve cha -- que jour.
}

\score{
  <<
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \new Voice = "theme" {%\voiceOne
        \override Score.PaperColumn #'keep-inside-line = ##t
        \MetriqueArmure
        \MusiqueTheme
      }
%      \new Voice = "acc" {\voiceTwo
%        \override Score.PaperColumn #'keep-inside-line = ##t
%        \MetriqueArmure
%        \MusiqueAcc
%      }
      \new Lyrics \lyricsto theme {
        \Paroles
      }
    >>
  >>
  \layout{}
  \midi{}
}
