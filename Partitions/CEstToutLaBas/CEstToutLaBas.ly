\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4=80
  \time 3/4
  \key lab \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do'' {
  lab8[^"Solo"\mf\< sib] do do do4\!
  mib4\> reb8 do sib4\fermata\!
  lab8[^"Chœur" sib] do do do4
  mib4 reb8 do sib4\fermata \bar "||"
  lab4^"Solo" do8 mib do4
  sib4 do8 sib sib4
  lab4^"Chœur" do8 mib do4
  sib4 do8[ sib] lab4\fermata \bar "||"
  sib4^"Echo" do8[ sib] lab4\fermata \bar "|."
}

MusiqueAccompagnement = \relative do' {
  do8[ mib] lab lab lab4
  do4 sib8 lab sol4
  do,8[ mib] lab lab lab4
  do4 sib8 lab sol4 \bar "||"
  lab4 mib8 sol lab4
  reb,4 mib8 fa sol4
  do,4 mib8 sol lab4
  reb,4 mib8 reb do4 \bar "||"
  reb4 mib8 reb do4 \bar "|."
}

Paroles = \lyricmode {
  C'est tout là_- bas de -- dans nos champs,
  C'est tout là_- bas de -- dans nos champs,
  Il y_a de jo -- lies tent's, lon -- la,
  Il y_a de jo -- lies ten -- tes.
  -lies ten -- tes.
}

\score{
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \new Voice = "theme" {\voiceOne
	\override Score.PaperColumn #'keep-inside-line = ##t
	\autoBeamOff
	\MetriqueArmure
	\MusiqueTheme
      }
      \new Voice = "accompagnement" {\voiceTwo
	\override Score.PaperColumn #'keep-inside-line = ##t
	\autoBeamOff
	\MusiqueAccompagnement
      }
      \new Lyrics \lyricsto theme {
	\Paroles
      }                       
    >>
\layout{}
\midi{}
}
