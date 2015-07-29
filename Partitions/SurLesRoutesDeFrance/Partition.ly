\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4=100
  \time 4/4
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

Couplet = \relative do' {
  \key lab \major
  \partial 4
  r8 fa8 | do'4^"Vigoureux" do sib lab8[( sib]) | do4 do fa,
  sol8 lab | sib4 do8 reb mib4 sib | reb2 do |
  sib4 lab8[( sib]) do4 sol | lab4 sol8 lab sib4
  fa8 fa | sol4 sol lab sol8 fa | sol2 sol4 r8
  do8 | fa4-^ fa-^ mib-^
  sib8[( reb]) | do4-^ do-^ sib-^
  sol8 sib | lab4 sol8 lab sib4 do8[( reb]) | do2 sol4
  sol4 | lab4 sol8[( lab]) sib4 lab8 sib | do4. do8 fa2~ | fa2~ fa8 r
  fa,8 sol | lab4 sol8 fa do'2 | fa,4 r r2
  \bar "||"
}

Refrain = \relative do'' {
  \key fa \major
  \tempo 4=140
  do4\staccato do\staccato sib\staccato^"Refrain − très gai" sol8\staccato sib\staccato | la4\staccato do\staccato sib\staccato sol8\staccato
  sib\staccato | la4 la8 do re4 fa8 re | do2 sol4 r8
  do,8 | re8 r re fa mi4
  mi8 sol | fa8 r fa la sol r
  do4 | la4 re do8[( si la si]) | do2~ do8 r r
  sol8 | sib4 sib la fa8 la | sib4 sib la r8
  la8 | sib4 sib8[( re]) fa4 fa8[( re]) | do2 la4 r8
  do,8 | re8 r re fa mi r mi sol | fa4 la8 do re r
  fa4 | do4 la \acciaccatura la8 sol8.[( fa16 sol8. la16]) | fa8 r
  la8 do re r fa4 | do4 la \acciaccatura la8 sol8.[( fa16 sol8. la16]) | fa4 r r
  \bar "|."
}

ParolesI = \lyricmode {
	Par le pa -- ys, de bon ma -- tin,
	Que le ciel soit joy -- eux ou tris -- te,
	Les Rou -- tiers, leur fourche à la main,
	S'en vont par la lande ou la pis -- te…
	Nous fran -- chis -- sons
	Co -- teaux et monts_;
	Au loin, no -- tre chant nous de -- van -- ce_;
	Nous a -- van -- çons en cri -- ant : «_Mont -- joie_!_»
	Sur les rou -- tes de Fran -- ce.

	Tra la la, la la la la la la,
	Mar -- chons, ou -- bli -- ons la pous -- siè -- re_;
	Tout droit, a -- van -- çons
	En chan -- tant nos chan -- sons
	Vers la lu -- miè -- re.
	Le soir ve -- nu, nous al -- lu -- me -- rons
	Nos feux dans la clai -- riè -- re.
	Tout droit, a -- van -- çons
	En chan -- tant nos chan -- sons
	Vers la lu -- miè -- re.
	Tra la la, vers la lu -- miè -- re.
}

\score{
  <<
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \override Score.PaperColumn #'keep-inside-line = ##t
      \MetriqueArmure
      \new Voice = "I" {%\voiceOne
        \Couplet
        \Refrain
      }
      \new Lyrics \lyricsto I {
        \ParolesI
      }
    >>
  >>
  \layout{}
  \midi{}
}
