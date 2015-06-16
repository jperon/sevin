\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4.=80
  \time 6/8
  \key sol \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

RefrainTheme = \relative do'' {
  sol4.\segno si4 sol8 \bar "||"
  la4. do4 la8
  sol4. si4 sol8
  re4( mi8) re4. \bar "'"
  sol4. si4 sol8
  la4. do4 la8
  sol4. fad8[ sol] la
  sol2.^"Fin" \bar "||"
}

CoupletTheme = \relative do'' {
  re4. si8[( do]) re
  do4. la8[( si]) do
  si4. re4 si8
  si4. la \breathe
  re4. si8[( do]) re
  do4. la8[( si]) do
  si4. re4 si8
  la2.\segno \bar "|."
}

RefrainAccompagnement = \relative do' {
  si4. re4 si8
  si4. mi4 do8
  si4. re4 do8
  si4 do8 si4.
  si4. re4 si8
  do4. mi4 do8
  si4. do4 do8
  si2.
}

CoupletAccompagnement = \relative do'' {
  si4. sol8[ la] si
  la4. fad8[ sol] la
  sol4. si4 sol8
  sol4. fad
  si4. sol8[ la] si
  la4. fad8[ sol] la
  sol4. si4 sol8
  re2.
}

Paroles = \lyricmode {
  Cœur de Jé -- sus, no -- tre Chef, no -- tre frè -- re,
  Ap -- pre -- nez_- moi à ê -- tre gé -- né -- reux_;
  Et, dé -- dai -- gneux d'un la -- beur mer -- ce -- nai -- re,
  À vous ser -- vir comme on doit ser -- vir Dieu.
}

\score{
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \new Voice = "theme" {\voiceOne
	\override Score.PaperColumn #'keep-inside-line = ##t
	\autoBeamOff
	\MetriqueArmure
	\RefrainTheme
        \CoupletTheme
      }
      \new Voice = "accompagnement" {\voiceTwo
	\override Score.PaperColumn #'keep-inside-line = ##t
	\autoBeamOff
	\MetriqueArmure
	\RefrainAccompagnement
	\CoupletAccompagnement
      }
      \new Lyrics \lyricsto theme {
	\Paroles
      }                       
    >>
\layout{}
\midi{}
}
