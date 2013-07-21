\version "2.16"
\include "italiano.ly"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4=72
  \time 9/8
  \key sol \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueCouplet = \relative do' {
  \partial 8 re8\mp^\markup {\italic {Simple et doux, pastoral}}
  sol4.~ sol8 si re, sol si re,
  sol4. sol la8 si do
  si4.~\< si4 si8 sol4 la8\>
  la2.~ la8\! r re,
  sol4.~ sol8 si re, sol si re,
  sol4. sol la8 si do
  si4.~\< si4 si8 sol4 la8\>
  la2.~ la8\! r re
  re4\mf re8 re4. si8 sol si\<
  re4. re4.~\! re8 r re\f
  re4.~ re8 mi do sol do mi
  re2.~ re8 r si\p
  si4.~ si8 re re, sol la si\<
  si4. la\! do8 la si\>
  sol4.~ sol4\dim sol8 fad4 fad8
  sol4.~\! sol8\fermata r4 \bar "||"
}

RefrainI = \relative do'' {
  si4\pp sol8 \bar "||"
  \time 6/8
  si4 sol8 sol si do
  si4. la8 la\< si
  do4 si16[( do])\! mi8 re do
  si4.~ si4 r8
  re4\p si8 re4.~
  re4 si8 re4 si8
  re4.~ re8 r si\<
  si4. si8\f do re
  mi4. mi4 r8
  sol,4. <sol la>
  si2.\espressivo
  re4.~\pp\> re8 do si
  do4.\ppp la
  sol4.~ sol8 r \bar "|."
}

RefrainII = \relative do' {
  re4 si8
  re4 si8 si re mi
  re4( sol8) fad fad sol
  la4 sol16[ la] do8 si la
  sol4.~ sol4 r8
  si4 sol8 si4.~
  si4 sol8 si4 sol8
  si4.~ si8 r re,
  re4. sol8 fad fa
  mi4( sol8) sol4 r8
  mi4. mi
  sol2.
  sol4.~ sol8 sol sol
  sol4. fad
  sol4.~ sol8 r
}

RefrainIII = \relative do {
  sol4 r8
  sol4 r8 sol4 r8
  re'4 re8 re re re
  re4 re8 re mi fad
  sol4.~ sol4 r8
  r4. si4 re,8
  sol4.~ sol4 si8
  si4 re,8 sol r sol
  sol4. sol,
  do4. do4 r8
  r8 dod dod dod4.
  r8 re re re4.
  si8 si si mi4.(
  la,4) r8 re4.
  <sol,~ si~>4. <sol si>8 r
}

ParolesCouplet = \lyricmode {
  Sei -- gneur, ras -- sem -- blés près des ten -- tes
  Pour sa -- lu -- er la fin du jour,
  Tes fils lais -- sent leur voix chan -- tan -- te
  Vo -- ler vers toi, plei -- nes d'a -- mour_:
  Tu dois ai -- mer l'hum -- ble pri -- è -- re
  Qui de ce camp s'en va mon -- ter,
  Ô toi qui n'a -- vais sur la ter -- re
  Pas de mai -- son pour t'a -- bri -- ter_!
}

ParolesRefrain = \lyricmode {
  \italique
  Nous ve -- nons, tou -- tes les pa -- trouil -- les,
  Te pri -- er pour te ser -- vir mieux,
  Vois au bois si -- len -- ci -- eux
  Tes scouts qui s'a -- ge -- nouil -- lent_:
  Bé -- nis_- les, ô Jé -- sus, dans les cieux_!
}

ParolesBasse = \lyricmode {
  \italique
  Vois, nos pa -- trouil -- les
  Vien -- nent pri -- er pour te ser -- vir mieux,
  Vois au bois tes fils pi -- eux
  Qui s'a -- ge -- nouil -- lent_:
  Bé -- nis_- les, bé -- nis_- les, ô Jé -- sus, dans les cieux_!
}

\score{
  \new ChoirStaff <<
    \set ChoirStaff.autoBeaming = ##f
    \new Staff <<
      \set Staff.midiInstrument = "recorder"
      {
        \new Voice = "couplet" {
          \override Score.PaperColumn #'keep-inside-line = ##t
          \MetriqueArmure
          \MusiqueCouplet
        }
        \break
        <<
          \new Voice = "refrainI" {\voiceOne
                                   \override Score.PaperColumn #'keep-inside-line = ##t
                                   \RefrainI
          }
          \new Voice = "refrainII" {\voiceTwo
                                    \override Score.PaperColumn #'keep-inside-line = ##t
                                    \RefrainII
          }
        >>
      }
    >>
    \new Lyrics \lyricsto couplet {
      \ParolesCouplet
    }
    \new Lyrics \lyricsto refrainI {
      \ParolesRefrain
    }
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \clef bass
      \MetriqueArmure
      \new Voice = "refrainIII" {
        \override Score.PaperColumn #'keep-inside-line = ##t
        s8*142
        \RefrainIII
      }
    >>
    \new Lyrics \lyricsto refrainIII {
      \ParolesBasse
    }
  >>
  \layout{
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup #'remove-first = ##t
    } 
  }
  \midi{}
}
