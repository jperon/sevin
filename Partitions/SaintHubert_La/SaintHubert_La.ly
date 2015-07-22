\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4.=70
  \time 6/8
  \key sol \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueI = \relative do' {
  \partial 8*3
  re8^"Gaîment" re re | sol8 sol sol la si do | si4 la8
  si8 do re | la8 do si la si sol | la4.\fermata
  re,8 re re | sol8 sol sol la si do | si4 la8
  si8 do re | la8 do si la sol la | sol4.\fermata
  \bar "||"
  la8 si do | re8 do si la re do | si4 la8
  sol8 sol sol | sol8 do si la si sol | la4.\fermata
  la8 si do | re8 do si la re do | si4 la8
  sol8 sol sol | sol8 do si la sol la | sol4.\fermata
  \bar "|."
}

MusiqueII = \relative do' {
  re8 re re | si8 si si re sol la | sol4 fad8
  sol8 la si | re,8 la' sol re sol si, | re4.
  re8 re re | si8 si si re sol la | sol4 fad8
  sol8 la si | re,8 la' sol re si re | si4.

  re8 sol la | si8 la sol re si' la | sol4 re8
  si8 si re | sol8 la sol re sol si, | re4.
  re8 sol la | si8 la sol re si' la | sol4 re8
  si8 si re | sol8 la sol re si re | si4.
}

ParolesI = \lyricmode {
  Ô Saint Hu -- bert, pa -- tron des gran -- des chas -- ses,
  Toi qu’ex -- al -- tait la fan -- fare au ga -- lop,
  En pour -- sui -- vant le gi -- bier à la tra -- ce,
  Tu le for -- çais sous l’é -- lan des che -- vaux.

  Nous, les der -- niers des -- cen -- dants de ta ra -- ce,
  Ar -- ra -- che_- nous aux plai -- sirs a -- vi -- lis_;
  Rem -- plis nos cœurs de jeu -- nesse et d’au -- da -- ce,
  Dans la fo -- rêt fais_- nous chas -- seurs har -- dis.
}

\score{
  <<
    \new Staff <<
      \set Staff.midiInstrument = "french horn"
      \set Staff.autoBeaming = ##f
      \override Score.PaperColumn #'keep-inside-line = ##t
      \MetriqueArmure
      \new Voice = "I" {\voiceOne
        \MusiqueI
      }
      \new Lyrics \lyricsto I {
        \ParolesI
      }
      \new Voice = "II" {\voiceTwo
        \MusiqueII
      }
    >>
  >>
  \layout{}
  \midi{}
}
