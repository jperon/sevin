\version "2.16"
\language "français"

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

MusiqueTheme = \relative do'' {
  \partial 4 la8.\f la16
  re2 dod8 si la si
  la2 la8 fad fad8. fad16
  la2~ la8 sol fad sol
  mi2 r4 la8. la16
  si2 sol8 sol la8. si16
  dod2 r8 si si8. la16
  re4 re la fad
  fad2 mi8 r la8. la16
  si2 sol8 sol fad8. sol16
  re'2 r8 re,8\> re8. mi16
  fad4 fad fad la\!
  mi2 re4 r \bar "||"
  fad4 fad8 mi re re mi fad
  si2 fad4 r
  fad4 fad8 mi re re mi fad
  si2 la4 r
  la4 si8 dod re dod si fad
  fad2 mi4 r
  si'4\< dod8 re mi si re\! dod
  si2 la4 r
  fad4\f fad8 sol la fad re mi
  re2 si4 r
  sol'4^"rall." fad8 mi la la re, mi
  mi2 re4 \bar "|."
}

Paroles = \lyricmode {
  \italique
  Saint Lou -- is, Mon -- sei -- gneur de Fran -- ce,
  De Jé -- sus_- Christ le bon ser -- gent,
  Vers toi mon -- tent nos cris ar -- dents_:
  Gar -- de les Chefs des Scouts de Fran -- ce_!
  Vers toi mon -- tent nos cris ar -- dents_:
  Gar -- de les Chefs des Scouts de Fran -- ce_!
  
  \roman
  Toi qui ser -- vis au rang su -- prê -- me,
  Humble et dou sous le di -- a -- dè -- me,
  Tu sais que nous ne vou -- lons ê -- tre
  Rien que les ser -- vi -- teurs du Maî -- tre_;
  Tu sais que nous ne vou -- lons ê -- tre
  Rien que les ser -- vi -- teurs du Maî -- tre_!
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
      \Paroles
    }
  >>
  \layout{}
  \midi{}
}
