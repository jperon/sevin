\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4=100
  \time 4/4
  \key sol \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
  mi4 mi si' si
  la8 la la do si4. si8
  la4 la si la
  sol4 fad8 sol fad4 fad
  mi8 mi mi mi si'2
  la4 do si si
  la4 la sol2
  fad4 fad mi2
  si'4 si8 si mi4 mi8 mi
  re2 si4 re8 si
  la4 la sol la
  si2 si4 si8 si
  do4 si8 do si4 la8 sol
  fad4 sol la8 si la sol
  fad4 mi8 fad mi2
  re4 mi8 fad sol4 la8 si
  do8 do si la si2
  do8 re mi do si2
  si4 do8 si la2
  la8 do si la sol2
  sol4 la8 si do4 si8 do
  si8 la sol fad sol4( fad)
  mi2 sol4 sol
  la4 si8 do re do mi re
  si2 sol4 do
  si4 la8 sol la2
  mi4 fad sol la
  si2. si8 do
  re4 mi8 re si4 si
  la4 do si la8 sol
  la4 la8 la si la sol fad
  sol4 sol8 la sol fad mi re
  mi2 mi8 fad sol la
  si4 si8 do re si do re
  mi2 mi
  mi1
  \bar "|."
}

MusiqueAccI = \relative do' {
  mi4 mi sol sol
  fad8 fad fad la sol4. sol8
  sol4 fad mi mi
  mi4 mi8 mi mi4 re
  mi8 mi mi mi fad2
  mi4 fad sol sol
  fad4 fad mi2
  mi4 re mi2
  sol4 sol8 sol do4 do8 do
  si2 sol4 si8 sol
  sol4 fad mi fad
  sol2 sol4 sol8 sol
  la4 sol8 sol fad4 fad8 mi
  mi4 mi mi8 mi mi mi
  mi8[ re] do do si2
  re4 re8 re re4 fad8 sol
  la8 la sol fad sol2
  sol8 sol sol sol sol2
  sol4 sol8 sol sol4( fad)
  mi8 mi fad fad fad4 mi
  mi4 mi8 mi mi4 mi8 fad
  sol8 fad mi mi mi4. re8
  mi2 mi4 sol
  sol4 fad8 fad sol sol fad fad
  sol4 fad mi mi8[ fad]
  sol4 sol8 sol sol4( fad)
  mi4 mi mi mi
  re2. sol8 sol
  fad4 fad8 fad sol4 sol
  sol8[ fad] mi[ fad] sol4 fad8 mi
  mi4 mi8 mi re re mi mi
  mi4 mi8 mi re do si si
  si2 mi8 mi mi fad
  sol4 fad8 sol la fad sol la
  si2 do
  si1
}

MusiqueAccII = \relative do' {
  mi4 mi mi mi
  mi8 mi mi mi mi4. re8
  re4 re do do
  si4 la8 la si4 si
  mi8 mi mi mi re2
  do4 la mi' mi
  si4 si do( si8[ la])
  si4 si mi2
  sol4 sol8 sol sol4 sol8 sol8
  sol2 re4 re8 re
  re4 re re re
  sol,2 mi'4 mi8 mi
  mi4 mi8 mi re4 re8 re
  do4 si do8 do do si
  la4 la8 la la4 sol
  do4 do8 do si4 re8 re
  re8 re re re sol,2
  mi'8 mi do do re2
  mi4 mi8 re do2
  do8 do re do si2
  do4 do8 si la4 la8 la
  si8 si do do si2
  mi2 mi4 mi
  re4 do8 do si si la la
  sol2 do4 la
  si4 do8 mi re2
  do4 do do8[ mi] re[ do]
  sol2. mi'8 mi
  si4 si8 si mi4 re
  do4 la mi' si8 si
  do4 re8 do sol sol do do
  si4 do8 do si la la la
  sol2 sol8 si si si
  mi4 re8 mi fad re mi fad
  sol2 la
  mi1
}

Paroles = \lyricmode {
  No -- tre Da -- me, qui par vo -- tre «_oui_»
  a -- vez chan -- gé la fa -- ce du mon -- de,
  Pre -- nez en pi -- tié ceux qui veu -- lent
  di -- re «_oui_» pour tou -- jours.
  Vous qui sa -- vez à quel prix
  ce mot s'a -- chè -- te et se tient,
  Ob -- te -- nez_- nous de ne pas re -- cu -- ler
  de -- vant ce qu'il ex -- i -- ge de nous.
  Ap -- pre -- nez_- nous à le di -- re com -- me vous_:
  dans l'hu -- mi -- li -- té, la pu -- re -- té,
  la sim -- pli -- ci -- té et l'a -- ban -- don
  à la vo -- lon -- té du Pè -- re.
  Fai -- tes que tout au long de no -- tre vie,
  les «_oui_» que nous di -- rons a -- près ce -- lui_- là
  Ne soient pas au -- tre cho -- se qu'un mo -- yen
  d'ad -- hé -- rer en -- cor plus par -- fai -- te -- ment
  à la vo -- lon -- té de Dieu,
  Pour no -- tre sa -- lut et ce -- lui du monde en -- tier.
  A -- men_!
}

\score{
  \new ChoirStaff
  <<
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \clef treble
      \new Voice = "theme" {\voiceOne
        \override Score.PaperColumn #'keep-inside-line = ##t
        \MetriqueArmure
        \MusiqueTheme
      }
      \new Voice = "accI" {\voiceTwo
        \override Score.PaperColumn #'keep-inside-line = ##t
        \MetriqueArmure
        \MusiqueAccI
      }
    >>
    \new Lyrics \lyricsto theme {
      \Paroles
    }
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \clef treble
      \new Voice = "accII" {
        \override Score.PaperColumn #'keep-inside-line = ##t
        \MetriqueArmure
        \MusiqueAccII
      }
    >>
  >>
  \layout{}
  \midi{}
}
