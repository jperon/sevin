\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4=100
  \time 2/4
  \key sol \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }
roman = { \override Score . LyricText #'font-shape = #'roman }


MusiqueTheme = \relative do' {
  re4^"Chœur" sol
  sol4 si8 sol
  re4 sol
  sol4~ sol8 r
  sol4 sol8[( la])
  si4 do8 si
  la4 sol
  la4 la
  re,4 sol
  sol4 si8 sol
  re4 sol
  sol4~ sol8 r
  sol4 la
  si4 do8^\markup {\italic rall.} si
  la4 re
  sol,2 \bar "||"
  si4^"Solo" do
  re4 do8 si
  do4 mi
  re4~ re8 r
  si4 do
  re4 mi8 re
  do4 si
  si4 la
  si4 do
  re4 do8 si
  do4 mi
  re4~ re8 r
  si4 do^\markup {\italic rall.}
  re4 mi8 re
  do4 si
  la4~ la8 r \bar "|."
}

Paroles = \lyricmode {
  \italique
  Si Jé -- sus ar -- ri -- vait au camp,
  En por -- tant bâ -- ton et mu -- set -- te,
  Si Jé -- sus ar -- ri -- vait au camp,
  Pe -- tits Loups, quel é -- vé -- ne -- ment_!
  
  \roman
  On ver -- rait la Meute à l'ins -- tant
  Ac -- cou -- rir et met -- tre nu_- tê -- te,
  On ver -- rait la Meute à l'ins -- tant
  L'a -- do -- rer fort dé -- vo -- te -- ment.
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
