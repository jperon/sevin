\version "2.16.2"
\include "italiano.ly"

\header {
  tagline = ""
}

MetriqueArmure = {
  \tempo 4=80
  \time 2/4
  \key do \major
}

MusiqueTheme = \relative mi' {
  \partial 8 mi8
  la8 sold la si
  do4. si8
  \time 3/4 si8 la la4 sold4
  \time 2/4 la4 r8 mi
  la8 sold la si
  do4. si8
  \time 3/4 do8 si do4. re8
  \time 2/4 mi4 r8 do
  mi8 mi re do
  sol8 sol do mi
  re4. si8
  sol4 r8 si
  re8 re do si
  la8 la la do
  si4 sol4
  la4.\fermata
  \bar "|."}

Paroles = \lyricmode {
  C'é -- tait au mois de mai que je fus a -- dou -- bé
  En la com -- man -- de -- rie de Mon -- ti -- gny l'Al -- lier_;
  En ce clair jour ma joie ne se put com -- pa -- rer
  Qu'à cel -- le des a -- mants qui ont le cœur com -- blé.
}

\score{
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \new Voice = "theme" {
	\autoBeamOff
	\MetriqueArmure
	\MusiqueTheme \break
      }
      \new Lyrics \lyricsto theme {
	\Paroles
      }
    >>
\layout{}
\midi{}
}
