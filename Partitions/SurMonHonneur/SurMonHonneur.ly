\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4=60
  \time 2/4
  \key do \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
  do4 re8. mi16
  mi4 r8 mi
  fa8. fa16 \times 2/3 {fa8 sol la}
  sol4 r8 mi16 fa
  sol4 la8. si16
  do2
  si4-- la--
  sol4-- r
  la4. \breathe la8
  si8.\< si16 do8. re16\!
  re2
  sol,4 r8 mi16 fa
  sol4 la8. si16
  do4. si8
  la8 sol fa mi
  sol4 re8 r\fermata
  do4 re8 mi
  sol4 re8 mi
  re2
  do4 r \bar "|."
}

Paroles = \lyricmode {
  Sur mon Hon -- neur, a -- vec la grâ -- ce de Dieu,
  je m'en -- gage à ser -- vir de mon mieux
  Dieu, l'É -- glise et la Pa -- tri -- e,
  à ai -- der mon pro -- chain en tou -- tes cir -- con -- stan -- ces,
  à ob -- ser -- ver la Loi scou -- te.
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
