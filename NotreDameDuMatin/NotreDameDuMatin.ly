\version "2.16"
\include "italiano.ly"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4=80
  \time 2/4
  \key do \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
  \partial 4 mi8 mi^\markup {\italic {Religieux, sans lenteur}}
  mi8 mi16 mi mi8 re
  do8 do sol' sol
  sol8 sol fa mi16 mi
  re4 mi8 mi
  mi8 mi mi fa16 sol
  la8 la fa fa
  mi8 mi16 mi re8 re
  do4 re8 re
  sol8 sol la la16 la
  si8 si si si
  re8 re si la16 la
  sol4 sol8 sol
  sol8 sol la la16 la
  sol8 sol \breathe mi mi16 mi
  sol4 fa
  mi4 re
  do4 \bar "||"
  mi8^\markup {\smallCaps Refrain \italic {avec beaucoup de simplicité et de confiance}} mi
  sol8 sol la si16 do
  la8 sol mi mi
  sol8 sol la si16 do
  \bar "||" \time 3/4
  la8 sol sol4 mi8 fa
  sol4 r8 do do4
  \bar "||" \time 2/4
  re8 re re do16 re
  \bar "||" \time 3/4
  mi8 do do4 re8 re
  \bar "||" \time 2/4
  mi4 do
  sol4.^\markup {La \concat{1{\teeny\raise#0.6 {re}}} et \concat{2{\teeny\raise#0.6 {e}}} fois} sol8
  sol4 r \bar "||"
  sol4.^\markup {Pour finir} <sol do>8
  <sol do>4 r
}

Paroles = \lyricmode {
  L'au -- be gri -- se blan -- chit les ten -- tes,
  Les é -- toi -- les meu -- rent aux cieux.
  Sur les eaux s'en -- rou -- lent, flot -- tan -- tes,
  Les é -- char -- pes des brouil -- lards bleus.
  Puis sou -- dain, l'ho -- ri -- zon s'em -- bra -- se
  D'un long jet de flam -- me ver -- meil,
  Et nous as -- sis -- tons en ex -- ta -- se
  À la nais -- san -- ce du so -- leil.
  
  \italique
  Nous te sa -- lu -- ons la pre -- miè -- re,
  Toi qui nous don -- nas pour Lu -- miè -- re
  Ton Fils di -- vin_;
  Tou -- te la na -- tu -- re t'ac -- cla -- me,
  Ô No -- tre_- Da -- me
  Du Ma -- tin_!
  Du Ma -- tin_!
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
