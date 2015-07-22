\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4=110
  \time 4/4
  \key fa \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueCouplet = \relative do' {
  \partial 2
  r4 re | re4 la' la fa | re2
  r4 fa | fa4 fa mi re | la2
  r4 fa' | fa4 fa fa fa | do2
  r2 | fa2 mi4 re | mi2. r4 |
}

MusiqueRefrain = \relative do' {
  \repeat volta 2 {
    re4.^"Refrain" mi8 fa4 sol | la4. la8 sib4
    sib4 | la4 fa sol mi |
  }
  re2
  \bar "|."
}

ParolesCouplet = \lyricmode {
  Ho -- là mar -- chons les gueux,
  Er -- rant sans feu ni lieu,
  Bis -- sac et ven -- tre creux,
  Mar -- chons les gueux.
}

ParolesRefrain = \lyricmode {
  \italique
  Ký -- ri -- e e -- lé -- i -- son,
  Mi -- se -- ré -- re nos -- tri.
}

\score{\transpose do re
  <<
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \new Voice = "theme" {
        \override Score.PaperColumn #'keep-inside-line = ##t
        \MetriqueArmure
        \MusiqueCouplet
        \MusiqueRefrain
      }
    >>
    \new Lyrics \lyricsto theme {
      \ParolesCouplet
      \ParolesRefrain
    }
  >>
  \layout{}
}

\score{\transpose do re
  <<
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \new Voice = "theme" {
        \override Score.PaperColumn #'keep-inside-line = ##t
        \MetriqueArmure
        \unfoldRepeats {
          \MusiqueCouplet
          <<
            {\voiceOne \MusiqueRefrain}
            \new Voice = "canon" {\voiceTwo s1 \MusiqueRefrain}
          >>
        }
      }
    >>
    \new Lyrics \lyricsto theme {
      \ParolesCouplet
      \ParolesRefrain
    }
    \new Lyrics \lyricsto canon {
      \ParolesRefrain
    }
  >>
  \midi{}
}
