\version "2.16"
\include "italiano.ly"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4=100
  \time 4/4
  \key sol \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
  \partial 4 re8.\mf re16^\markup {\italic {Mouvement de marche}}
  <re si'>2 <do la'>8 <mi sol> <do la'> <mi do'>
  <do si'>4 <do la'> <si sol'>8 <si sol'> re8. <sol si>16
  <fad re'>2 r4 re8. re16
  <re si'>2 <do la'>8 <mi sol> <do la'> <mi do'>
  <do si'>4 <do la'> <reb sol>8 <reb sol> <do fad> <do la'>
  <si sol'>2 r4 <sol' si>8 <la do>
  <si re>4. <si re>8 <do mi>4 <si re>8 <la do>
  <fad la>2 <fad la>4 sol8 <mi la>
  <re si'>2 sol
  <fad la>2 r4 re8. re16
  mi2 sol8 sol la si
  do4.( si8) la4. r8
  <sol si>4 <re re'>\< <mi si'> <fad la>
  <sol re'>2. r4
  <sol si>4\ff <mi mi'> <re si'> <do la'>
  <si sol'>2. \bar "|."
}

Paroles = \lyricmode {
  Les oi -- seaux chan -- tent la di -- a -- ne,
  De -- bout, ô cam -- peur_!
  Le so -- leil rend l'air di -- a -- pha -- ne,
  Lou -- ons le Sei -- gneur.
  Ren -- dons grâ -- ces, la nuit fut bon -- ne,
  Et nos rê -- ves, d'or,
  Et le jour que sa main nous don -- ne
  Est meil -- leur en -- cor,
  Est meil -- leur en -- cor.
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
