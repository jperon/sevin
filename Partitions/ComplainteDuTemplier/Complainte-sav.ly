\version "2.12.1"
\language "français"

\header {
  tagline = ""
}

MetriqueArmure = {
  \tempo 4=100
  \time 6/4
  \key do \major
}

MusiqueTheme = \relative mi' {
  \partial 8 mi8
  la la sol la si4. si8 do si la4
  \time 2/4 sol8 la4 mi8
  \time 6/4 la la sol la si4. si8 do si do4
  \time 2/4 re8 mi4 do8
  \time 5/4 mi re do re mi re do mi re4
  \time 2/4 si8 sol4 si8
  \time 5/4 re re do si la la la do si4
  \time 2/4 sol8 la4.\fermata
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
