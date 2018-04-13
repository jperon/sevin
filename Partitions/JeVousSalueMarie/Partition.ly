\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4.=50
  \time 12/8
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueI = \relative do' {
  \key fa \major
  \partial 8*3 re8 re mi |
  fa8. sol16 fa8 mi re do re4 la8 |
  re4 mi8 fa4 fa8 sol fa sol la4 \breathe la8 |
  la8 sib do sol la sol fa fa la mi4 r8 |
  re4 fa8 sol8. fa16 mi8 fa fa mi re4 r8 \bar "||"
  
  la'8 fa sol la4. do8 sib la sol4 r8 |
  fa8 re mi fa4. la8 sol fa mi4 r8 |
  la8([ fa]) sol la la la do sib la sol4 r8 |
  re4 fa8 sol4 mi8 \breathe fa fa mi re4.
  \bar "|."
}

%MusiqueII = \relative do'' {
%}

ParolesI = \lyricmode {
  Je vous sa -- lue, Ma -- rie, plei -- ne de grâ -- ce,
  le Sei -- gneur est a -- vec vous,
  vous ê -- tes bé -- nie en -- tre tou -- tes les fem -- mes
  et Jé -- sus, votre en -- fant est bé -- ni.
  
  Sain -- te Ma -- rie, Mè -- re de Dieu,
  pri -- ez pour nous, pau -- vres pé -- cheurs,
  main -- te -- nant et à l'heure de la mort.
  A -- men, a -- men_! Al -- le -- lu -- ia_!
}

\score{
  <<
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \override Score.PaperColumn #'keep-inside-line = ##t
      \MetriqueArmure
      \new Voice = "I" {%\voiceOne
        \MusiqueI
      }
      \new Lyrics \lyricsto I {
        \ParolesI
      }
%      \new Voice = "II" {\voiceTwo
%        \MusiqueII
%      }
    >>
  >>
  \layout{}
  \midi{}
}
