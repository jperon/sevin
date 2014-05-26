\version "2.16"
\include "italiano.ly"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4.=60
  \time 6/8
  \key do \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
  <do mi>8^"Chœur" <do mi> <do mi> <re fa>4 <re fa>8
  <fa re'>4 <re si'>8 <fa re'> <mi do'> <sol si>
  <fa la>8 <fa la> <fa la> <la do> <sol si> <fa la>
  <mi sol>4 r8 r4 <mi sol>8
  <re fa>8 <re fa> <re fa> <re fa> <mi sol> <re fa>
  <do mi>4. <mi do'>4 <mi do'>8
  <re si'>8 <re si'> <re si'> <fad re'> <mi do'> <fad la>
  sol4. r4 <fa la>8
  <fa sol>8 <fa la> <fa sol> <fa sol> <fa la> <fa sol>
  <mi sol>4. mi4 <mi do'>8
  <mi do'>8 <mi do'> <mi do'> <mi do'> <re si'>  <mi do'>
  <fa~ re'~>4. <fa re'>8 r8 sol
  <sol mi'>8 <sol mi'> <fa re'> <mi do'> <re si'> <mi do'>
  <fa la>4. <fa la>4 <fa re'>8
  <mi do'>8 <mi do'> <mi do'> <re si'> <mi do'> <fa re'>
  <mi~ do'~>4. <mi do'>8 r4 \bar "||"
  
  mi8^"Solo" mi mi fa4 fa8
  fad4 fad8 sol4 sol8
  la8 la la sol4 la8
  sol4 fa8 mi4.
  mi8 mi mi si'4 si8
  do4 si8 si4 la8
  la8 la la do4 mib,8
  re4 re8 re r mi
  mi8 sold si re do si
  si4. la8 r la
  sol8 sol sol fa fa fa
  mi4.~ mi8 r mi
  re8 re re la' si la
  la4 sol8 mi mi mi
  fa4 mi8 mi4 re8
  do4. r4. \bar "|."
}

Paroles = \lyricmode {
  \italique
  Reste a -- vec nous, Jé -- sus, Bon Maî -- tre,
  Car le jour touche à son dé -- clin_!
  Bien -- tôt la nuit va re -- pa -- raî -- tre,
  De -- meure, ô voy -- a -- geur Di -- vin_;
  É -- ri -- ge ta ten -- te mys -- ti -- que_:
  Les nô -- tres sont là, tout au -- tour,
  Et de -- main, sur l'au -- tel rus -- ti -- que,
  Nous man -- ge -- rons le Pain d'A -- mour.
  
  \roman
  Tu vou -- lus naî -- tre dans l'é -- ta -- ble
  Par -- mi les bœufs et les ber -- gers_;
  Daigne a -- gré -- er cette hum -- ble ta -- ble,
  Fai -- te de bois mal as -- sem -- blés.
  Qu'il se -- ra doux t'y voir pa -- raî -- tre
  Pour nous don -- ner le Pain du ciel,
  Car tu le sais, ô mon Bon Maî -- tre,
  Le camp est tris -- te, sans au -- tel.
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
	\Paroles
      }                       
    >>
\layout{}
\midi{}
}
