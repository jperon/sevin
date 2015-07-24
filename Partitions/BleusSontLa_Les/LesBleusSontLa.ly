\version "2.12.1"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4.=90
  \time 6/8
  \key sib \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
	\partial 4. re8 re re
	sol4 sol8 la4 la8
	sib4 sib8 la la la
	sol4 fa8 la4 la8
	\bar "||" \time 12/8 sol2.~ sol8 r r re re re
	\bar "||" \time 6/8 sol4 sol8 la4 la8
	sib4 sib8 la la la
	sol4 re8 fa4 fa8
	\bar "||" \time 12/8 fa2.~ fa8 r r re' re re
	\bar "||" \time 6/8 mib4 mib8 do4 sib8
	re4 re8 sib la sib
	do4 re8 sib[( la]) sol
	\bar "||" \time 12/8 fa2.~ fa8 r r re' re re
	\bar "||" \time 6/8 mib4 mib8 do4 sib8
	re4 re8 sib la sol
	fa4 sol8 la4 sib8
	\bar "||" \time 12/8 sol2.~ sol4 r r \bar "|."
}

Paroles = \lyricmode {
	Les bleus sont là, le ca -- non gron -- de,
  Di -- tes les gars, a -- vez_- vous peur_?
	Les bleus sont là, le ca -- non gron -- de,
  Di -- tes les gars, a -- vez_- vous peur_?
  Nous n’a -- vons qu’u -- ne peur au mon -- de,
  C’est d’of -- fen -- ser No -- tre_- Sei -- gneur.
  Nous n’a -- vons qu’u -- ne peur au mon -- de,
  C’est d’of -- fen -- ser No -- tre_- Sei -- gneur.
}

\score{
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \new Voice = "theme" {
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
