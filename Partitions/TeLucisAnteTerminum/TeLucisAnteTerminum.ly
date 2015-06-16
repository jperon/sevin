\version "2.16"
\language "français"
\include "gregorian.ly"

\header {
  tagline = ""
  composer = ""
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
  sol si la do do do si la \divisioMinima
  la do do do sol la sol fa \divisioMaior
  la la sol do si la sol \[ \melisma la si \melismaEnd la \] \divisioMinima
  la la sol fa sol la sol sol \finalis
  \[ \melisma sol la \melismaEnd sol \] \[ \melisma fa \pes \melismaEnd sol\] \finalis
}

ParolesI = \lyricmode {
  \set stanza = "1."
  A- vant la mort de la lu- mière,
  Ô Cré- a- teur de l'u- ni- vers,
  Nous vous pri- ons très hum- ble- ment
  De gar- der no- tre cam- pe- ment.
}

ParolesII = \lyricmode {
  \set stanza = "2."
  É- loi- gnez les rê- ves mau- vais,
  Tout ce qui trou- ble no- tre paix,
  A- fin que tou- jous et par- tout,
  Nos corps, nos â- mes soient à vous.
}

ParolesIII = \lyricmode {
  \set stanza = "3."
  Pè- re mi- sé- ri- cor- di- eux,
  Jé- sus, é- ter- nel Roi des cieux,
  Et vous, Es- prit, vrai Dieu comme eux,
  Bé- nis- sez_- nous, fer- mez nos yeux.
  A- men.
}

\score{
    \new VaticanaStaff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \new VaticanaVoice = "theme" {
	\override Score.PaperColumn #'keep-inside-line = ##t
	\MusiqueTheme
      }
      \new Lyrics \lyricsto theme {
	\ParolesI
      }
      \new Lyrics \lyricsto theme {
	\ParolesII
      }
      \new Lyrics \lyricsto theme {
	\ParolesIII
      }
    >>
\layout{}
\midi{}
}
