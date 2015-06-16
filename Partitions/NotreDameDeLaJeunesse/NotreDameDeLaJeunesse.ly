\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4.=70
  \time 6/8
  \key do \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }
roman = { \override Score . LyricText #'font-shape = #'roman }
melisme = { \set ignoreMelismata = ##f }
sansmelisme = { \set ignoreMelismata = ##t }

MusiqueTheme = \relative do' {
  mi8\mf( sol)^\markup {\italic {Légèrement et assez vif}} do mi8( mi) mi
  re4 do8 mi4 r8
  mi,8( sol do) mi mi mi
  mi8( re) do la4( sol8)
  r4 sol8 la\< la si
  do8 re mi\! re4 re8 \breathe
  mi,8\p( sol do) mi( mi) mi
  mi8( re) do la4( sol8)
  r4 sol8 la la si
  si do re mi4.\fermata
  \bar "||" \time 2/4
  r8 re do si
  la8 si do8. mi16
  re4 do8 r \bar "|."
}

ParolesI = \lyricmode {
  \set stanza = "1."
  \sansmelisme
  Pe -- ti -- te Vier -- \skip 8 ge de quinze ans,
  Ô \skip 8 \skip 8 vous dont les traits ra -- vis -- sants \skip 8
  Char -- maient l'é -- ter -- nel -- le Sa -- ges -- se,
  Po -- \skip 8 \skip 8 sez vo -- tre main sur nos fronts, \skip 8
  Car tous à vous nous nous of -- frons,
  No -- tre_- Da -- me de la Jeu -- nes -- se.
}

ParolesII = \lyricmode {
  \set stanza = "2."
  \sansmelisme
  Que nos yeux gar -- \skip 8 dent leur clar -- té, \skip 8
  Et \skip 8 par vous qu'en soit é -- \skip 8 car -- té
  Tout ce qui trouble et ce qui bles -- se,
  Loin, \skip 8 bien loin des sen -- tiers \skip 8 com -- muns, \skip 8
  At -- ti -- rez_- nous à vos par -- fums,
}

ParolesIII = \lyricmode {
  \set stanza = "3."
  \sansmelisme
  Gar -- dez_- nous jeu -- \skip 8 nes, pour ai -- mer
  La \skip 8 splen -- deur des bois em -- \skip 8 bau -- més, \skip 8
  Les fleurs, les é -- toi -- les qui nais -- sent,
  Et le spec -- ta -- \skip 8 cle tri -- \skip 8 om -- phant \skip 8
  D'un cœur de tout pe -- tit en -- fant.
}

ParolesIV = \lyricmode {
  \set stanza = "4."
  \sansmelisme
  À l'heu -- re du \skip 8 chas -- te dé -- sir,
  Quand \skip 8 notre â -- me de -- vra \skip 8 choi -- sir \skip 8
  La com -- pa -- gne de sa ten -- dres -- se,
  Don -- \skip 8 nez_- nous de lui pré -- \skip 8 sen -- ter \skip 8
  Un cœur par vous seule ha -- bi -- té,
}

ParolesV = \lyricmode {
  \set stanza = "5."
  \sansmelisme
  Sa -- \skip 8 chant bien qu'où Dieu nous con -- duit,
  De -- \skip 8 \skip 8 main est plus beau qu'au -- jourd' hui, \skip 8
  Fai -- tes que nous mar -- chions sans ces -- se,
  D'un \skip 8 \skip 8 pas tou -- jours plus en -- le -- vant, \skip 8
  Tour -- nés vers le So -- leil le -- vant,
}

ParolesVI = \lyricmode {
  \set stanza = "6."
  \sansmelisme
  N'ay -- ant vou -- lu \skip 8 vieil -- lir ja -- mais,
  Par -- \skip 8 ve -- nus aux der -- niers \skip 8 som -- mets \skip 8
  Der -- riè -- re les -- quels Dieu se dres -- se,
  Nous \skip 8 mour -- rons, tout en sou -- \skip 8 ri -- ant, \skip 8
  À vous, Per -- le de l'O -- ri -- ent,
}

\score{
  <<
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \new Voice = "theme" {
        \override Score.PaperColumn #'keep-inside-line = ##t
        \MetriqueArmure
        \MusiqueTheme
      }
    >>
    \new Lyrics \lyricsto theme {
      \ParolesI
    }
    \new Lyrics \lyricsto theme {
      \ParolesII
    }
    \new Lyrics \lyricsto theme {
      \ParolesIII
    }
    \new Lyrics \lyricsto theme {
      \ParolesIV
    }
    \new Lyrics \lyricsto theme {
      \ParolesV
    }
    \new Lyrics \lyricsto theme {
      \ParolesVI
    }
  >>
  \layout{}
  \midi{}
}
