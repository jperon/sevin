\version "2.16"
\include "italiano.ly"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4=80
  \time 4/4
  \key sib \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

VoixI = \relative do'' {
  re4\f re mib4. re8
  re8 do sol la sol4 fa
  fa4 sol8 la sib4. sib8
  re8^\markup {\italic rall.} do do sol do4( dod)
  re4^\markup {\italic Tempo} re mib4. re8
  re8 do sol la sol4 fa
  fa4 sol8 la sib4. sib8
  re8 do sol la sib2 \bar "||"
  
  do4 do8. do16 do4 r
  re8 do sib do re4 r
  do4. la8 do sib la sol
  fa4 la8. sol16 fa4( mib')
  re4 re mib4. re8
  re8 do sol la sol4 fa
  fa4 sol8 la sib4. sib8
  re8 do sol la sib2 \bar "|."
}

VoixII = \relative do' {
  fa4 fa sol4. fa8
  mib4 mib mib re
  re4 mib fa fa
  mi4 mi fa2
  fa4 fa sol4. fa8
  mib4 mib mib re
  re4 mib fa re
  mi4 mib re2
  
  fa4 fa8. fa16 fa4 r
  fa8 fa fa fa fa4 r
  fa4. la8 la sol fa mi
  fa4 mi fa2
  fa4 fa sol4. fa8
  mib4 mib mib re
  re4 mib fa re
  mi4 mib re2
}

VoixIII = \relative do' {
  sib4 sib sib4. sib8
  la4 sib8 do sib4 sib
  sib4 sib sib sib
  sib4 sib la2
  sib4 sib sib sib
  la4 sib8 do sib4 sib
  sib4-- sib sib sib
  sib4-- sib sib2
  
  la4 la8. la16 la4 r
  sib8 la sib la sib4 r
  la4 sib8 do do4 do8 sib
  la4 sib la2
  sib4 sib sib4. sib8
  la4 sib8 do sib4 sib
  sib4 sib sib sib
  sib4 do sib2
}

VoixIV = \relative do {
  sib4 sib sib4. sib8
  fa'4 fa sib, sib
  sib4 mib re re
  do4 sol' fa2
  sib,4 sib sib sib
  fa'4 fa sib, sib
  sib4 mib re sib
  do4 fa sib,2
  
  fa'4 fa8. fa16 fa4 r
  sib8 fa re fa sib4 r
  fa4 fa do do
  fa4 do fa2
  re4 sib sib4. sib8
  fa'4 fa sib, sib
  sib4 mib re sib
  do4 fa sib,2
}

Paroles = \lyricmode {
  Ay -- ant vu s'é -- pan -- dre sur la plai -- ne,
  Vers la mi -- nuit, les clar -- tés du so -- leil,
  Les Louv' -- teaux sont ve -- nus, par Si -- zai -- nes,
  S'as -- seoir en cercle au Ro -- cher du Con -- seil.
  
  Ô Frè -- res Loups, leur dit A -- ké -- la,
  Ex -- pli -- quons_- nous donc un peu sur ce -- la.
  A -- vons_- nous ja -- mais vu sur la plai -- ne,
  Vers la mi -- nuit, les clar -- tés du so -- leil_?
}

\score{
  \new ChoirStaff <<
    \new Staff <<
      \set Staff.midiInstrument = "recorder"
      \new Voice = "voixI" {\voiceOne
	\override Score.PaperColumn #'keep-inside-line = ##t
	\autoBeamOff
	\MetriqueArmure
	\VoixI
      }
      \new Voice = "voixII" {\voiceTwo
	\override Score.PaperColumn #'keep-inside-line = ##t
	\autoBeamOff
	\MetriqueArmure
	\VoixII
      }
      \new Lyrics \lyricsto voixI {
	\Paroles
      }                       
    >>
    \new Staff <<
      \clef bass
      \set Staff.midiInstrument = "flute"
      \new Voice = "voixIII" {\voiceOne
	\override Score.PaperColumn #'keep-inside-line = ##t
	\autoBeamOff
	\MetriqueArmure
	\VoixIII
      }
      \new Voice = "voixIV" {\voiceTwo
	\override Score.PaperColumn #'keep-inside-line = ##t
	\autoBeamOff
	\MetriqueArmure
	\VoixIV
      }                   
    >>
  >>
\layout{}
\midi{}
}
