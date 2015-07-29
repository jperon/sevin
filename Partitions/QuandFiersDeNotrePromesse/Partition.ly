\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4=120
  \time 4/4
  \key sib \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueI = \relative do' {
  \partial 4
  fa4 | re'4. la8 do[( sib]) la sol | fa4.( sol8) fa4
  fa4 | sib4 fa do' fa, | re'2 r4
  fa,4 | sol4 sol mib' mib | mib4( re8[ do]) sib4
  <sib re>4 | fa'4 mib8 re do4 re | <fa, sib>2 r4
  \bar "||"

  fa8.^"Refrain" sol16 | fa4 la-> do->
  fa,8. sol16 | fa4 sib-> <sib re>4.-> r8 |
  fa'4 mib8 re do4 re | <fa, sib>2 r4
  \bar "|."
}

MusiqueII = \relative do' {
  fa4 | re'4. la8 do[( sib]) la sol | fa4.( sol8) fa4
  fa8[ mib] | <re fa>4 re <fa la> fa | <sib, fa'>4 fa' sib
  fa4 | sol4 sol mib' mib | mib4( re8[ do]) sib4
  la8[ sol] | <fa la>4 <fa sol>8 <fa sol> <fa la>4 <mib fa> | mib4 re8[ do] re4

  fa8. sol16 | fa4 fa8.[ sol16] fa4
  fa8. sol16 | fa4 fa8.[ sol16] fa4. r8 |
  <fa la>4 <fa sol>8 <fa sol> <fa la>4 <mib fa> | mib4 re8[ do] re4
}

Paroles = \lyricmode {
	Quand, fiers de no -- tre pro -- mes -- se,
	Nous é -- le -- vons la main \italique é -- ho,
  \roman
	Doigts joins, cœur sans fai -- bles -- se,
	Sans crain -- te du len -- de -- main \italique é -- ho.

  \italique
  Tra -- la -- la é -- ho,
  tra -- la -- la é -- ho_!
	Vi -- vent les Scouts, é -- ho (é -- ho).
}

\score{
  <<
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \override Score.PaperColumn #'keep-inside-line = ##t
      \MetriqueArmure
      \new Voice = "I" {\voiceOne
        \MusiqueI
      }
      \new Voice = "II" {\voiceTwo
        \MusiqueII
      }
      \new Lyrics \lyricsto II {
        \Paroles
      }
    >>
  >>
  \layout{}
  \midi{}
}
