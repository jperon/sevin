%Compilation:lilypond LaBucheDeChamarande.ly
%Apercu:evince LaBucheDeChamarande.pdf
%Esclaves:timidity -ia LaBucheDeChamarande.midi
\version "2.12.1"
\include "italiano.ly"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4.=70
  \time 6/8
  \key mib \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
		\partial 8 sib8
		mib4 mib8^\markup{\italic Religieusement} sol4 sib8
		re4( do8) fa,4 sol8
		sib4. fa8 mi fa
		sib4.~ sib8 r8 sib,8
		mib4 mib8 sol4 sib8
		re4( do8) fa,4 sol8
		sib4 lab8 fa4 sol8
		mib4.~ mib4 r8
		fa4 sib8 sib8. la16 sib8
		re4. sib4 r8
		sib8. la16 sib8 mib4 la,8
		sib4. r4. R2. \bar "||"
		mib4^Refrain re8 re8. do16 do8
		sol4.~ sol4 r8
		do4 sib8 sib8. lab16 sol8
		sib4. fa4 r8 \bar "||"
			\time 9/8
			mib8^\markup{\italic rall.} fa sol sib4. fa4( sol8)
			\bar "||" \time 6/8
			mib4.~ mib4 r8 R2.
			\partial 8*5 r4.^"D.C." r4
		\bar "||"
			\time 9/8
			mib8^\markup{\italic rall. pour finir}\< fa sol\! sib4.\> sib4.
			\bar "||" \time 6/8
			\partial 8*5 sib4.~ sib4\! \bar "|."
}

Paroles = \lyricmode {
	Les scouts dans la clai -- riè -- re
	Dan -- saient au -- tour du feu,
	Leur chant et leur pri -- è -- re
	Mon -- taient sous le ciel bleu.
	Mais voi -- ci que dé -- bû -- che
	Un pauvre à l'air très doux.
	
	\italique Les scouts, vite une bû -- che_!
	Vite, en -- core u -- ne bû -- che_!
	Viens te chauf -- fer chez nous_!
	
	Au feu de camp du Ciel_!
}

\score{
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \new Voice = "theme" {
	\override Score.PaperColumn #'keep-inside-line = ##t
	\autoBeamOff
	\MetriqueArmure
	\MusiqueTheme
      }
      \new Lyrics \lyricsto theme {
	\Paroles
      }                       
    >>
\layout{}
\midi{}
}
