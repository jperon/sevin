\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4=120
  \time 2/4
  \key re \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueI = \relative do' {
  fad8.\mf mid16 fad8.^"Refrain − léger" mid16 | fad4 fad8. mid16 | fad4 la | re2 |
  fad8 mi re do | si8[( la]) sol fad | mi2\< | fad2\> |
  fad8.\! mid16 fad8. mid16 | fad4 fad8. mid16 | fad4 la | re2 |
  la4^"élargir" re | la4\< fad8 la | mi'2\f\> | re2
  \bar "||"

  fad,4\mf^"Couplet" fad8 sol | mi4 mi | si'4 la | fad2 |
  re4 mi8 fad | mi8 re la' fad | mi2 | fad2 |
  fad4 fad8 sold | la4 fad | la si | dod2 |
  la4 mi8 dod | re8 mi fad la | la4( sold) | la2
  \bar "|."
}

ParolesI = \lyricmode {
  En a -- vant, les Scouts, au so -- leil le -- vant,
	La grand' route est claire et so -- no -- re.
	Du gauche et du droit, tou -- jours en a -- vant,
	Et chan -- tons à l'au -- ro -- re.

  \set stanza = "1."
  Sor -- tant des bru -- mes du ma -- tin,
	Dans la na -- ture où tout s'é -- clai -- re,
	Le gai so -- leil pa -- raît sou -- dain,
	Lan -- çant la flamme et la lu -- miè -- re.
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
    >>
  >>
  \layout{}
  \midi{}
}
