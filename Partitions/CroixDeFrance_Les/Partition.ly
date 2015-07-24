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

MusiqueI = \relative do' {
  \partial 8
  fa8 | do'4^"Vigoureux" do sib lab8[( sib]) | do4 do fa,
  sol8 lab | sib4 do8 reb mib4 sib | reb2 do |
  sib4 lab8 sib do4 sol | lab4 sol8[ lab] sib4
  fa8 fa | sol4 sol lab sol8 fa | sol2 sol4 r8
  do8 | fa4 fa mib sib8 reb | do4 do sib
  sol8 sib | lab4 sol8 lab sib4 do8 reb | do2 sol4
  sol4 | lab4 sol8[( lab]) sib4 lab8 sib | do4. do8 fa2~ | fa2~ fa8 r
  fa,8 sol | lab4 sol8 fa do'2 | fa,2~ fa8 r r
  \bar "|."
}

ParolesI = \lyricmode {
  Ils ont for -- cé l’hor -- reur des bois
  Par de -- là les grands monts sau -- va -- ges,
  Et bap -- ti -- sé les cieux gau -- lois
  Jus -- qu’aux mers aux som -- bres ri -- va -- ges,
  Les vieux croi -- sés, moi -- nes et guer -- riers,
  Que me -- naient Saint Mi -- chel et Saint Geor -- ges,
  Au cœur du roc ont plan -- té la croix,
  Sur les rou -- tes de Fran -- ce.
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
