\version "2.16"

\header {
  title = "Les trois voies"
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4=80
  \time 4/4
  \key f \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

VoixA = \relative c' {
  d4. d8 d4 d
  a'4. a8 a4 a
  e4. e8 e4 e
  d4. a8 a4 a
}

VoixB = \relative c' {
  d2 d4 d
  d1
  c2 c4 c
  bes4.( c8 d4 e)
}

VoixC = \relative c' {
  f4 f8 f f4. f8
  f4 f8 f f4. g8
  a4 a8 a a2
  f4 e d2
}

Chant = {
  \VoixA
  \VoixB
  \VoixC
}


Paroles = \lyricmode {
	E ul -- tre -- ia_! E ul -- tre -- ia_! E ul -- tre -- ia_! E ul -- tre -- ia_! 
        San -- ti -- a -- go, San -- ti -- a -- go,
        De Vé -- ze -- lay, du Mont Saint_- Mi -- chel au Puy en Ve -- lay,
        O -- sta -- bat_!
}

\score{
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \transpose c c
      \new Voice = "theme" {
	\override Score.PaperColumn #'keep-inside-line = ##t
	\autoBeamOff
	\MetriqueArmure
	\VoixA\break\bar "||"
	\VoixB\break\bar "||"
	\VoixC\bar "|."
      }
      \new Lyrics \lyricsto theme {
	\Paroles
      }
    >>
\layout{}
}

\score{
  <<
    \new Staff <<
      \set Staff.midiInstrument = "recorder"
      \transpose c c
      \new Voice = "theme" {
	\override Score.PaperColumn #'keep-inside-line = ##t
	\autoBeamOff
	\MetriqueArmure
	\Chant
        \Chant
        \Chant
      }
      \new Lyrics \lyricsto theme {
	\Paroles
      }                       
    >>
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \transpose c c
      \new Voice = "theme" {
	\override Score.PaperColumn #'keep-inside-line = ##t
	\autoBeamOff
	\MetriqueArmure
        s1*12
        s1*4
	\Chant
        \Chant
      }                     
    >>
    \new Staff <<
      \set Staff.midiInstrument = "ocarina"
      \transpose c c
      \new Voice = "theme" {
	\override Score.PaperColumn #'keep-inside-line = ##t
	\autoBeamOff
	\MetriqueArmure
        s1*12
        s1*8
	\Chant
        \Chant
      }
      \new Lyrics \lyricsto theme {
	\Paroles
      }                       
    >>
  >>
\midi{}
}