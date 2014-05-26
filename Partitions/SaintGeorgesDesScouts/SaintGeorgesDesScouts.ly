\version "2.16"
\include "italiano.ly"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4=100
  \time 4/4
  \key re \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

CoupletTheme = \relative do' {
  \partial 4 fad8.\mf sol16
  la2 sold8 la si8. fad16
  la2 la4 mi8. fad16
  sol4 sol8. fad16 sol4 la
  fad2 r4 re8. fad16
  la2 sold8. la16 si8. fad16
  la2 la4 sold8. la16
  si8. lad16 si8. dod16 re4 sold,
  la2. r4
  sol!4. fad8 mi4 fad8. sol16
  la4.( mi8) la4 r
  sol4 sol8. fad16 mi8. mi16 fad8. sol16
  la4.( dod16[ si]) la4. r8
  re,8. fad16 fad8. la16 la4. r8
  fad8.\< la16 la8. re16 re4.\! r8
  la8. re16 re8. mi16 mi4. fad8
  re2. r4 \bar "||"
}

RefrainI = \relative do'' {
  si4\ff si8. si16 si8. la16 si8. do16
  re2 si4. r8
  do4 do8. si16 la8. la16 si8. do16
  si4.( la8) sol4 r4
  si4 si8. la16 sol8. la16 si8. do16
  re2~ re8 re dod si
  la4. re8 dod re mi8. fad16
  re2. r4
  do!4. si8 la4 si8 do
  re4.( si8) re4 r8 do8
  do4. sol8 la8. la16 si8. do16
  re4.(^"rit." fad16[ mi]) re4. r8
  re,8. sol16 sol8. si16 si4. r8
  sol8.\< si16 si8.\! re16 re4. r8
  si8. re16 re8. mi16 mi4. re8
  sol2
  \bar "|."
}

RefrainII = \relative do'' {
  sol4 sol8. re16 sol8. re16 sol8. la16
  si2 sol4. r8 la4 la8. sol16 fad8. fad16 sol8. la16
  sol4.( fad8) sol4 r
  sol4 sol8. re16 si8. re16 sol8. la16
  si2~ si8 si la sol
  fad4. fad8 mi fad sol8. la16
  fad2. r4
  la4. sol8 fad4 sol8 la
  si4.( sol8) si4 r8 la8
  la4. sol8 fad8. fad16 sol8. la16
  si4.( re16[ do]) si4. r8
  si,8. re16 re8. sol16 sol4. r8
  re8. sol16 sol8. si16 si4. r8
  sol8. sol16 sol8. sol16 sol4. <la do>8
  si2
}

Paroles = \lyricmode {
  Grand Mar -- tyr, ô no -- ble Saint Geor -- ges,
  Ceint d'hon -- neur et de loy -- au -- té,
  Sou -- ri -- ant au fer qui t'é -- gor -- ge,
  Nous t'ai -- mons pour ta mâ -- le beau -- té.
  Ô tri -- bun mi -- li -- tai -- re,
  Ton cœur ne pou -- vait pas for -- fai -- re_;
  Tu res -- tas plus fort, tu res -- tas plus fort
  Que la tor -- ture et la mort.
  
  \italique
  Dans les plis de ton o -- ri -- flam -- me,
  Nous te je -- tons tou -- te notre â -- me,
  Et trois mil -- lions d'a -- do -- les -- cents
  Sui -- vent ton casque aux feux é -- blou -- is -- sants_:
  Tous les Scouts de la ter -- re
  T'ont pris pour chef et pour grand frè -- re_;
  Saint Geor -- ges des Scouts_!
  Saint Geor -- ges des Scouts_!
  Vers le Christ en -- traî -- ne_- nous_!
}

\score{
  <<
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \new Voice = "theme" {
        \override Score.PaperColumn #'keep-inside-line = ##t
        \MetriqueArmure
        \CoupletTheme
        \voiceOne \key sol \major
        \RefrainI
      }
      \new Voice = "accompagnement" {\voiceTwo
        s4 s1*16
        \RefrainII
      }
    >>
    \new Lyrics \lyricsto theme {
      \Paroles
    }
  >>
  \layout{}
  \midi{}
}
