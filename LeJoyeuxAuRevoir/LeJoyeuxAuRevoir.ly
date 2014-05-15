\version "2.16"
\include "italiano.ly"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4=60
  \time 2/4
  \key sol \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueCouplet = \relative do' {
  \partial 8 r8
  R2*3 r4. r8 R2*3
  r4 r8 re\mf
  sol8. sol16 sol8 si
  la8. sol16 la8 si
  sol8. sol16 si8 re
  mi4. mi8
  \acciaccatura mi8 re8. si16 si8 sol
  la8. sol16 la8 si
  sol8. mi16 mi8 re
  sol4. \bar "||"
}

MusiqueRefrainI = \relative do'' {
  mi8\f^"Refrain"
  re8 si si sol
  la8. sol16 la8 si
  re8.\< si16 si8 re\!
  mi4. <mi sol>8
  re8. si16 si8 sol
  la8. sol16 la8 si
  sol8. mi16 mi8 re
  sol4. \bar ":|"
}

MusiqueRefrainII = \relative do' {
  do8\f
  si8 sol sol4
  fad8. mi16 fad8 sol
  la8.\< sol16 sol8 sol\!
  sol4. sol16.[( la32])
  si8. sol16 sol8 sol
  fad8. mi16 fad8 fad
  mi4 do8 re
  sol,4.
}

MusiqueRefrainIII = \relative do {
  do8\f
  sol'4 sol
  re8. re16 re8 sol
  fad8.\< sol16 sol8 si,\!
  do4. do8
  sol'8. sol16 sol8 mi
  re8. mi16 re8 si
  do4 do8 re
  sol,4.
}

\parallelMusic #'(PianoI PianoII PianoIII PianoIV) {
  %Bar1
  re8\mf  |
  s8      |
  s8      |
  re8     |
  
  %Bar2
  sol8.  sol16  sol8  si  |
  si4           re8   re  |
  re4           re8   sol |
  sol,4         si8   sol |
  
  %Bar3
  la8.^\prall   sol16  la8   si        |
  re4.                      <re fad>8  |
  fad8.         mi16   fad8  fad       |
  re'4.                      si8       |
  
  %Bar4
  <mi, sol>8.\<  sol16  si8   re\!   |
  si4                   sol'         |
  sol4.                       si8    |
  mi4.                        re8    |
  
  %Bar5
  mi4   s8   \bar "|:" sol8  |
  sol4   r8            sol   |
  do4    r8            do    |
  do4    s8            mi    |
  
  %Bar6
  re8.   si16   si8   sol   |
  sol4.               re8   |
  si8.   re16   re8   la    |
  sol4.               fad8  |
  
  %Bar7
  \acciaccatura si8 la8.   sol16  la8   si         |
                    re4.                fad8       |
                    do8.   si16   la8   re         |
                    re4.                <re, si'>8 |
  
  %Bar8
  sol8.  mi16\>   mi8        re\!         |
  mi8.   do16     do8        do           |
  r8     sol,8    sol        la           |
  <do~ mi'~>4    <do mi'>8  <re re' fad>  |
  
  %Bar9
  sol4        s8   re\p    |
  <si re>4    r8   s       |
  sol4        r8   s       |
  <sol, sol'>4 s8   re''   |
  
  %Bar10
  sol4  sol  |
  si4   re   |
  re4   si'  |
  sol,4 sol' |
  
  %Bar11
  la8.   sol16  fad8   re   |
  do4.                 re8  |
  fad8.  sol16  la8    fad  |
  re4.                 re8~ |
  
  %Bar12
  sol4.         sol8~   |
  si4.          re8     |
  sol4.         si8     |
  <sol, re'>4.  sol'8   |
  
  %Bar13
  sol4.         sol8~    |
  mi4.          <do mi>8 |
  do4.          sol8     |
  do,4.         do8      |
  
  %Bar14
  sol4      sol   |
  <si re>4  re    |
  sol4      si    |
  sol4      sol'  |
  
  %Bar15
  la8.   mi16   fad8   re   |
  re4           re          |
  la8.   sol16  la8    fad  |
  re4~          re          |
  
  %Bar16
  sol8.  mi16~  mi8    re~  |
  si4           do8    la   |
  sol4          sol8   fad  |
  mi4           do8    re~  |
  
  %Bar17
  re4.  \bar "||"  mi'8       |
  si4.             <mi sol>8  |
  sol4.            do8        |
  <sol, re'>4.     do8        |
  
  %Bar18
  re8(   si)  si(          sol)  |
  sol4~       sol8         re    |
  si8(   re)  re           si    |
  sol'4        <sol, sol'>       |
  
  %Bar19
  \acciaccatura la,8 la'8.   sol16  do8   si   |
                     re4            re         |
                     fad8.   mi16   fad8  sol  |
                     re'4~          re8   sol  |
  
  %Bar 20
  re8   si8   si   <fa sol re'>  |
  re4~        re4                |
  la8.  si16  sol8  sol          |
  fad8. si16  sol8  si,          |
  
  %Bar21
  mi'4.            sol8        |
  <mi sol>4.       mi'8        |
  sol4.            sol16. la32 |
  do4.             do8         |
  
  %Bar22
  re8.(   si16)   <sol si>8   sol      |
  sol,4.                      dod,8    |
  la8.    re16    re8         si16 sol |
  fad4(           sol8)       mi       |
  
  %Bar23
  \acciaccatura {la16[ si]} la8.      sol16  la8   si   |
                            <la re>4.             re8  |
                            fad8.     mi16   fad8  fad  |
                            re4~             re8   si   |
  
  %Bar24
  sol8.  mi16    mi8        re            |
  mi8.   do16    do8        do            |
  mi8    sol     sol        <fad la>      |
  do4~           <do, do'>8 <mi re'>      |
  
  %Bar25
  sol4.         |
  <si re>4.     |
  sol4.         |
  <sol, sol'>4. |
}

ParolesCouplet = \lyricmode {
  Faut- il nous quit -- ter sans es -- poir,
  Sans es -- poir de re -- tour_?
  Faut- il nous quit -- ter sans es -- poir
  De nous re -- voir un jour_?
}

ParolesRefrainI = \lyricmode {
  Ce n'est qu'un au- re -- voir, mes frères,
  Ce n'est qu'un au- re -- voir_;
  Oui, nous nous re -- ver -- rons, mes frères,
  Ce n'est qu'un au- re -- voir_!
}

ParolesRefrainII = \lyricmode {
  C'est qu'un au- re -- voir, mes frères,
  Ce n'est qu'un au- re -- voir_;
  Oui, nous nous re -- ver -- rons, mes frères,
  Ce n'est qu'au- re -- voir_!
}

ParolesRefrainIII = \lyricmode {
  Un au- re -- voir, mes frères,
  Ce n'est qu'un au- re -- voir_;
  Oui, nous nous re -- ver -- rons, mes frères,
  Ce n'est qu'au- re -- voir_!
}

\score{
  <<
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \new Voice = "theme" {
        \override Score.PaperColumn #'keep-inside-line = ##t
        \MetriqueArmure
        \MusiqueCouplet \break
      }
    >>
    \new Lyrics \lyricsto theme {
      \ParolesCouplet
    }
    \new ChoirStaff <<
      \new Staff <<
        \set Staff.midiInstrument = "flute"
        \set Staff.autoBeaming = ##f
        \new Voice = "refrainI" {
        \override Score.PaperColumn #'keep-inside-line = ##t
        \MetriqueArmure
        s2*16
        \MusiqueRefrainI
        }
      >>
      \new Lyrics \lyricsto refrainI {
        \ParolesRefrainI
      }
      \new Staff <<
        \set Staff.midiInstrument = "flute"
        \set Staff.autoBeaming = ##f
        \new Voice = "refrainII" {
        \override Score.PaperColumn #'keep-inside-line = ##t
        \MetriqueArmure \clef bass
        s2*16
        \MusiqueRefrainII
        }
      >>
      \new Lyrics \lyricsto refrainII {
        \ParolesRefrainII
      }
      \new Staff <<
        \set Staff.midiInstrument = "flute"
        \set Staff.autoBeaming = ##f
        \new Voice = "refrainIII" {
        \override Score.PaperColumn #'keep-inside-line = ##t
        \MetriqueArmure \clef bass
        s2*16
        \MusiqueRefrainIII
        }
      >>
      \new Lyrics \lyricsto refrainIII {
        \ParolesRefrainIII
      }
    >>
    \new PianoStaff <<
      \set PianoStaff.autoBeaming = ##t
      \new Staff <<
        \MetriqueArmure
        \new Voice {\voiceOne
          \relative do' { \PianoI }
        }
        \new Voice {\voiceTwo
          \relative do' { \PianoII }
        }
      >>
      \new Staff <<
        \MetriqueArmure
        \clef bass
        \new Voice {\voiceOne
          \relative do { \PianoIII }
        }
        \new Voice {\voiceTwo
          \relative do { \PianoIV }
        }
      >>
    >>
  >>
  \layout{
    \context { \Staff
      \RemoveEmptyStaves
      \override VerticalAxisGroup #'remove-first = ##t
    }
  }
  \midi{}
}
