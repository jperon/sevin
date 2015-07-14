\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4=100
  \time 4/4
  \key do \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
  mi4 mi8 mi sol sol la la
  sol2~ sol4 r
  mi4 mi8 mi sol fa mi re
  re2 mi4 r
  sol4 sol8 sol la la si si
  si2~ si4 r
  do4 sol8 sol sol fa mi re
  re2 do4 r
  re4 re8 re re do re mi
  re2~ re4 r
  mi4 mi8 mi mi re mi fa
  fa4( mi) re r
  sol4 sol8 sol sol sol fa mi
  la2~ la4 r
  re,4 mi8 fa sol fa mi re
  re2 do4 r \bar "||"
  do'4^"Chœur" do8 do sol sol la la
  sol2~ sol4 r
  do4 do8 do sol sol la la
  sol( fa) mi4 \breathe re8[( mi])
  fa4 fa8 mi fa[( sol]) la si \bar "||"
  \time 2/4 do4 \breathe si8 la \bar "||"
  \time 4/4 sol4 fa8 mi re4 mi8[(\turn fa])
  mi2( re)
  do2 r2 \bar "|."
}

Paroles = \lyricmode {
  Les ber -- gers ren -- trent leurs trou -- peaux.
  Le vent seul gé -- mit sur la du -- ne,
  L'hom -- me va pren -- dre son re -- pos,
  La fo -- rêt dort au clair de lu -- ne,
  Au -- tour du feu qui meurt en -- cor,
  Au -- près de nos mai -- sons de toi -- le,
  Nous pri -- ons sous le re -- gard d'or
  Des pa -- ci -- fi -- an -- tes é -- toi -- les.
  
  \italique
  Nous tres -- sail -- lons en t'in -- vo -- quant,
  Ô doux Maître à l'a -- mour im -- men -- se_:
  Bé -- nis tous les Scouts de ce camp,
  Et bé -- nis tous les Scouts de Fran -- ce.
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
