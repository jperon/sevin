\version "2.16"
\include "italiano.ly"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4.=70
  \time 6/8
  \key mib \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueCouplet = \relative do' {
	\partial 8 sib8
        mib4 fa8 sol4 lab8
        sib4( mib8) sib4 r8
        sol4. sol8[( fa]) mib
        fa4. r4 sib,8
        mib4 fa8 sol4 lab8
        sib4( mib8) sib4 r8
        sol4. sol8[( fa]) mib8
        mib4. r4
        \bar "||"
}

ThemeRefrain = \relative do' {
        mib8
        do'4 si8 do4 mib8
        sib4( sol8) sib4 r8
        lab4. lab8[( do]) sib8
        sib4. r4 mib,8
        do'4 si8 do4 mib8
        sib4( sol8) sib4 r8
        fa4. fa8[( lab]) sol
        mib4.~ mib8 r8
        \bar "|."
}

AccompagnementRefrain = \relative do'{
  mib8
  lab4 lab8 lab4 lab8
  sol4( mib8) sol4 r8
  fa4. fa8[( lab]) sol
  sol4. r4 mib8
  lab4 sol8 lab4 lab8
  sol4( mib8) sol4 r8
  re4. re4 re8
  mib4.~ mib8 r8
}

Paroles = \lyricmode {
	De -- vant tous, je m'en -- ga -- ge
        Sur mon hon -- neur,
        Et je te fais hom -- ma -- ge
        De moi, Sei -- gneur.
        
        Je veux t'ai -- mer sans ces -- se,
        De plus en plus,
        Pro -- tè -- ge ma Pro -- mes -- se,
        Sei -- gneur Jé -- sus_!
}

\score{
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \autoBeamOff
      \new Voice = "theme" {\voiceOne
	\override Score.PaperColumn #'keep-inside-line = ##t
	\MetriqueArmure
	\MusiqueCouplet
        \ThemeRefrain
      }
      \new Voice = "accompagnement" {\voiceTwo
        s8*48
        \AccompagnementRefrain
      }
      \new Lyrics \lyricsto theme {
	\Paroles
      }                       
    >>
\layout{}
\midi{}
}
