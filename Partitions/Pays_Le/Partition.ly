\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4=90
  \time 4/4
  \key sol \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueI = \relative do'' {
  \partial 4
  sol8[ la] | si4 si si la8[ sol] | fad4 la8[ re] do4
  sol8 la | si4 si si8[ re] do si | si8[ re] la4 r
  la8[ si] | do4. si8 do mi re do | si4( re8[ sol]) re4
  si8 si | la4 la la8[ mi'] re do | do[( re] si4) r
  \bar "|."
}

MusiqueII = \relative do'' {
  sol8[ la] | sol8[ fad] mi[ re] sol4 fad8[ mi] | re4 re re
  mi8 fad | sol8[ fad] mi[ re] mi4 la8 sol | sol4 fad r
  la8[ si] | la4 mi la8 sol fad re | sol4( la) si
  sol8 sol | sol4 fad8[ mi] re[ do'] si la | la8[( fad] sol4) r
}

ParolesI = \lyricmode {
  Au doux pa -- ys, pour nous tou -- jours,
	No -- tre cœur en fait bat -- tre d'au -- tres_:
	Des mains se pres -- sent dans les nô -- tres,
	Des re -- gards veil -- lent sur nos jours.
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
