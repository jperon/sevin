\version "2.16"
\include "italiano.ly"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 2=80
  \time 2/4
  \key sol \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
  re4^"Andantino cantabile" mi fad sol-- fad mi re mi-- mi \bar"'"
  sol4 la si do! si( la) sol la si si-- \bar "'"
  re,4 mi sol la sol fad mi re mi4. r8 \bar "|"
  re4^"Pressez le mouvement. Allegretto" mi sol sol-- fad mi re mi-- mi \bar "'"
  sol4 la si do! si( la) sol la si si \bar "'"
  re,4 mi sol la sol fad fad re mi4.-- r8 \bar "||"
  
  si'2( re4) mi-- mi-- mi re dod! re mi mi \bar "'"
  re2 si4 re( dod!) si sol fad mi re re \bar "'"
  la'4 sol la si sol fad mi2 re4 mi4. r8 \bar "|"
  si'2 re4 mi2 mi4 re dod! re mi mi-- re2 \bar "'"
  si4 re dod! la sol fad mi re-- re \bar "'"
  la'4 sol la si-- sol fad mi2 re4 mi4. r8 \bar "||"
  
  mi'4 mi re( dod!) re mi re dod! si si \bar "'"
  sol2 mi4 re2 mi4 sol sol la sol sol \bar "'"
  la4 si do! si-- la sol mi2 re4 mi4. r8 \bar "|"
  mi'4 mi re( dod!) re mi re dod! si si \bar "'"
  sol2 mi4 re2 mi4 sol sol la sol sol \bar "'"
  la4 si do! si sol fad mi2 re4 mi4. r8 \bar "||"
  
  si'2 re4 dod! si dod re dod si la la \bar "'"
  si4 si sol( fad) sol la-- sol fad mi mi \bar "'"
  fad4 fad la si si si re2-- dod!4 si4. r8 \bar "|"
  si2 re4 dod! si dod re( dod) si la-- la \bar "'"
  si4 si sol( fad) sol la-- sol fad mi mi \bar "'"
  fad4 fad la si si la re2-- dod!4 si4. r8 \bar "||"
  
  mi4-- mi la, si dod! re-- dod! si si \bar "'"
  si4 do! si la si sol sol la sol sol \bar "'"
  fad2 la4 si-- sol mi sol sol fad mi2 \bar "|"
  mi'4-> si-> si dod! re re dod! si si \bar "'"
  si4 do! si( la) si sol sol la sol sol \bar "'"
  fad2 la4 si sol mi mi mi2 re4 mi2\fermata \bar "|."
}

Paroles = \lyricmode {
  Ve -- nez, ve -- nez, Vier -- ge Ma -- ri -- e,
  Sur no -- tre route Au -- be fleu -- ri -- e,
  Ve -- nez sou -- ri -- re dans nos dé -- serts.
  
  C'est vous la ro -- se  sans é -- pi -- nes,
  Que ber -- cent les bri -- ses di -- vi -- nes
  Au -- près des eaux sous les pal -- miers verts.
  
  
  Ô vous, la roche o -- bé -- is -- san -- te
  D'où Jé -- sus, l'eau pure et vi -- van -- te,
  S'é -- pan -- che comme un ruis -- seau d'a -- vril,
  
  Soy -- ez douce à l'â -- me é -- pui -- sé -- e
  Que les lourds so -- leils ont bles -- sé -- e
  Dans les é -- ta -- pes de notre ex -- il.
  
  
  Aux cher -- cheurs des ter -- res pro -- mi -- ses,
  Dans les nuits per -- fi -- des et gri -- ses
  Bril -- lez, nu -- ée au voi -- le de feu_;
  
  Et dans son fris -- son -- nant sil -- la -- ge,
  Ils ver -- ront de leur gui -- de sa -- ge
  É -- tin -- ce -- ler le pas lu -- mi -- neux.
  
  
  Ar -- che sain -- te, pre -- mier ta -- ber -- na -- cle,
  Qui gar -- dez le pain du mi -- ra -- cle,
  Nei -- ge du Ciel, man -- ne sans le -- vain,
  
  Aux en -- fants de la sain -- te Ta -- ble
  Pré -- pa -- rez le pain vé -- ri -- ta -- ble,
  Don -- nez la fleur du fro -- ment di -- vin.
  
  
  Et la rou -- te bien -- tôt fi -- ni -- e,
  À notre â -- me, ô Por -- te bé -- ni -- e,
  Ou -- vrez- vous à la chu -- te du jour.
  
  Ou -- vrez la ci -- té pa -- ci -- fi -- que
  Où ray -- onne en vous, ma -- gni -- fi -- que,
  Le sou -- rire in -- fi -- ni de l'A -- mour.
}

\score{
  <<
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \new Voice = "theme" {
        \override Score.PaperColumn #'keep-inside-line = ##t
        \cadenzaOn
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
