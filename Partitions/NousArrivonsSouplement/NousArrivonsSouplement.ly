\version "2.16"
\include "italiano.ly"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4=120
  \time 2/4
  \key la \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do'' {
  la8 si dod dod
  dod8 dod dod4
  si8. dod16 re8 si
  dod4 la
  la8 si dod dod
  dod8 dod dod4
  si8. dod16 re8 si
  si4 la
  la8 dod si la
  sold8 la si4
  <<
    {\voiceOne si4( mi8.) re16
     dod8 si dod la}
    \new Voice {\voiceTwo\autoBeamOff
     sold4( sold8.) sold16
     mi8 mi la la}
  >>
  \oneVoice
  la8 dod si la
  sold8 la si4
  <<
    {\voiceOne si4( mi8.) re16
     dod8 si la4}
    \new Voice {\voiceTwo\autoBeamOff
     sold4( sold8.) sold16
     mi8 mi dod4}
  >>
  \bar "|."
}

Paroles = \lyricmode {
  Nous ar -- ri -- vons sou -- ple -- ment,
  Tous sur u -- ne fi -- le,
  Pous -- sant no -- tre hur -- le -- ment
  De fa -- çon ci -- vi -- le.
  Tous en cer -- cle dans l'a -- rène
  \italique
  Hou_! viv' la chef -- tai -- ne_!
  \roman
  Nous sau -- tons sur nos deux pieds_:
  \italique
  Hou_! viv' le louv' -- tier_!
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
