\version "2.16"
\include "italiano.ly"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4=100
  \time 3/4
  \key lab \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

RefrainTheme = \relative do' {
  <mib do'>2(\pp^"Refrain (à bouche fermée)" <fa reb'>8.)[ <mib do'>16]
  <fa sib>2.
  <sol sib>2 <lab do>8.[ <sib reb>16]
  <lab mib'>2.\>
  << {fa2.} {\voiceOne reb'2(\< lab4)} >>
  <lab dob>2\> <lab fa'>4\!
}
RefrainThMid = \relative do'' {
  <do mib>2( <si re>4)\<
  << {<sib reb>2.\fermata} {s4\> s4\!} >>
  \bar "||"
}
RefrainThFin = \relative do'' {
  <sib~ reb~>2-"Pour finir" <sib reb>8( <lab do>)
  <lab do>2.\fermata
  \bar "||"
}

RefrainAccompagnement = \relative do {
  lab4\pp do lab
  reb4 fa reb
  mib4 sol mib8.[ reb16]
  do2.
  reb2 do4
  re2 re4
}
RefrainAccMid = \relative do {
  mib2 fa4
  sol2.\fermata
}
RefrainAccFin = \relative do {
  mib2~ mib8 fa
  <lab, mib'>2.\fermata
}

CoupletTheme = \relative do' {
  r4.^"Couplet (religieux et très doux)" mib8\p lab do
  mib4 mib8 mib4.
  mib8 re mib fa4-> mib8
  reb4. reb4 reb8
  do4.( mib4) reb8
  do2.
  sib4 r8 mib,8\p lab do
  mib4 mib8 mib4.
  do8 lab sib do4 reb8
  do4. mib4-> reb8
  do4.( sib4) do8
  sib2.
  lab2. \bar "|."
}

CoupletAccA = \relative do'' {
  R2.
  <lab do>2.\p
  <lab do>2.\<
  <sol sib>2.\!
  lab4. sib\<
  <lab do>2.\>(
  <sol sib>4.\!)
  r4.
  <lab do>2.\pp
  lab2.
  lab4. sib\<
  <<
    s4\!
  <<
    \new Voice { \voiceOne do4.\p sib4. sib2. }
    \new Voice { \voiceTwo lab2.( lab4.) sol }
  >>
  >>
  lab2.
}

CoupletAccB = \relative do {
  R2.
  <lab mib'>2.
  << {mib'2.} {do2 lab4} >>
  <sib mib>2.
  <do mib>4. <reb fa>4.
  mib2.(
  mib4.) r4.
  <lab, mib'>2.
  <do fa>4.
  <lab mib'>4.(
  <do mib>4.)
  <reb fa>4.
  mib2.
  mib2.
  <lab, lab'>2.
}

ParolesRefrain = \lyricmode {
  A -- ve, Ma -- rí -- a. A -- ve Ma -- ri -- a.
  …ri -- a.
}

ParolesCouplet = \lyricmode {
  De -- vant le Saint des Saints,
  Ô chœur des Sé -- ra -- phins,
  Bé -- nis -- sez Ma -- ri -- e_;
  Ô vier -- ges de sa cour,
  Dans vos con -- certs d'a -- mour,
  Bé -- nis -- sez Ma -- ri -- e.
}

\score{
  <<
      \new Staff <<
        \set Staff.midiInstrument = "piccolo"
        \set Staff.autoBeaming = ##f
        \MetriqueArmure
        \time 6/8
        \new Voice = "couplet" {
          \override Score.PaperColumn #'keep-inside-line = ##t
          s2.*10
          \CoupletTheme
        }
      >>
    \new Lyrics \lyricsto couplet {
      \ParolesCouplet
    }
    \new ChoirStaff <<
      \new Staff <<
        \set Staff.midiInstrument = "flute"
        \set Staff.autoBeaming = ##f
        \MetriqueArmure
        \new Voice = "theme" {
          \override Score.PaperColumn #'keep-inside-line = ##t
          \RefrainTheme \RefrainThMid \RefrainThFin
          \CoupletAccA
        }
      >>
      \new Lyrics \lyricsto theme {
        \ParolesRefrain
      }
      \new Staff <<
        \set Staff.midiInstrument = "cello"
        \set Staff.autoBeaming = ##f
        \MetriqueArmure
        \clef bass
        \new Voice = "accompagnement" {
          \override Score.PaperColumn #'keep-inside-line = ##t
          \RefrainAccompagnement \RefrainAccMid \RefrainAccFin
          \CoupletAccB
        }
      >>
    >>
  >>
  \layout{remove-empty=true}
}
\score{
  <<
    \new ChoirStaff <<
      \new Staff <<
        \set Staff.midiInstrument = "piccolo"
        \set Staff.autoBeaming = ##f
        \MetriqueArmure
        \time 6/8
        \new Voice = "couplet" {
          \override Score.PaperColumn #'keep-inside-line = ##t
          s2.*8
          \CoupletTheme
        }
      >>
      \new Lyrics \lyricsto couplet {
        \ParolesCouplet
      }
      \new Staff <<
        \set Staff.midiInstrument = "flute"
        \set Staff.autoBeaming = ##f
        \MetriqueArmure
        \new Voice = "theme" {
          \override Score.PaperColumn #'keep-inside-line = ##t
          \RefrainTheme \RefrainThMid
          \CoupletAccA
          \RefrainTheme \RefrainThFin
        }
      >>
      \new Lyrics \lyricsto theme {
        \ParolesRefrain
      }
      \new Staff <<
        \set Staff.midiInstrument = "cello"
        \set Staff.autoBeaming = ##f
        \MetriqueArmure
        \clef bass
        \new Voice = "accompagnement" {
          \override Score.PaperColumn #'keep-inside-line = ##t
          \RefrainAccompagnement \RefrainAccMid
          \CoupletAccB
          \RefrainAccompagnement \RefrainAccFin
        }
      >>
    >>
  >>
  \midi{}
}
