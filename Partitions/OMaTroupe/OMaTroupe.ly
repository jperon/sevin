\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4=100
  \time 4/4
  \key lab \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueRefrain = \relative do'' {
  \partial 4 lab8. lab16
  lab2 lab8 sib do reb
  do4 do do8[( reb]) do sib
  sib2 sib8[( do]) sib lab
  lab2 r4 lab8. lab16
  lab2 lab8 sib do8. reb16
  do4 do \breathe do8 reb do8. sib16
  sib2 sib8 do sib8. lab16
  lab2 r \bar "||"
}

MusiqueCouplet = \relative do'' {
  r2 r4 lab8.^"Solo" fa16
  reb'2~ reb8. fa,16 fa8. mib16
  mib2 mib8 r lab8. lab16
  lab2~ lab8 sol lab sib
  sib2 r4 sib8 do
  reb4.~ reb8 do( sib) lab sib
  do2 do8 r do8. do16
  do4.
  << 
     \new Voice = "alternative" {\voiceOne do16 do16}
     {do8 \oneVoice}
  >>
  mib4. do8
  sib2 r4 \bar "|."
}

ParolesR = \lyricmode {
  \italique
  Ô ma Troupe, ô Trou -- pe ché -- ri -- e,
  Que dans tes rangs l'on vit heu -- reux_!
  Gar -- de_- nous, par Jé -- sus, Ma -- ri -- e,
  Gar -- de_- nous tou -- jours purs et gé -- né -- reux.
}

ParolesI = \lyricmode {
  \roman
  \set stanza = "1."
  C'est ta Loi qui nous ras -- sem -- ble,
  Ta pro -- messe qui nous u -- nit,
  C'est ta croix qui tout en -- sem -- ble
  Nous dé -- core et nous bé -- nit.
}

ParolesII = \lyricmode {
  \roman
  \set stanza = "2."
  L'i -- dé -- al que tu fis naî -- tre
  En nos cœurs en -- so -- leil -- lés
  Nous en -- flamme,
  \set ignoreMelismata = ##t
  et nous vou -- lons ê -- tre
  Scouts de 
  \set associatedVoice = alternative
  France et
  \set associatedVoice = couplet
  vrais che -- va -- liers.
  \unset ignoreMelismata
}

ParolesIII = \lyricmode {
  \roman
  \set stanza = "3."
  Ras -- sem -- blés sou -- vent sur ter -- re
  Pour chan -- ter au -- tour des feux,
  Nous se -- rons tous un jour, mes frères,
  Près du Père qui règne aux cieux.
}

\score{
    \new Staff <<
      \set Staff.autoBeaming = ##f
      \set Staff.midiInstrument = "flute"
      {
        \new Voice = "refrain" {
          \override Score.PaperColumn #'keep-inside-line = ##t
          \MetriqueArmure
          \MusiqueRefrain
        }
        \break
        \new Voice = "couplet" {
          \MusiqueCouplet
        }
      }
      \new Lyrics \lyricsto refrain {
        \ParolesR
      }
      \new Lyrics \lyricsto couplet {
        \ParolesI
      }
      \new Lyrics \lyricsto couplet {
        \ParolesII
      }
      \new Lyrics \lyricsto couplet {
        \ParolesIII
      }
    >>
\layout{}
\midi{}
}
