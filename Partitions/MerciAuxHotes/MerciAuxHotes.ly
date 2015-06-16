%Compilation:lilypond MerciAuxHotes.ly
%Apercu:evince MerciAuxHotes.pdf
%Esclaves:timidity -ia MerciAuxHotes.midi
\version "2.12.1"
\language "français"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4=110
  \time 2/4
  \key fa \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do'' {
	r8 sol^"Rapide et très lié" la sib
	sol8. sol16 la8 sib
	sol8. sol16 la8 sib
	la8. sol16 la8 sib
	do8. do16 sib8 la
	sol8 la sib la
	sol8\fermata r la4
	sib4 sol \bar "||"
	r8 la la la
	sib8 sib do do
	re8 \breathe re\cresc do sib
	la8 la sib do
	re8\! re,\pp re re
	sol8 la sib la
	sol8\fermata r sib4
	la4 sol \bar "||"
	r8 sol sol la
	sib8 la sib do
	re8 re do sib
	la8 la sib do
	re8 re do sib
	la8 sol sib do
	re8\fermata r sib4-.
	do4-. re-. \bar "||"
	r8 re do sib
	la8 sol la sib
	re8 re do sib
	la8 sol la sib
	re8 re do sib
	la8 sol fa mi
	re8\fermata r do4
	re4 re \bar "||"
	r8 sol la sib
	la8 sol la sib
	la8 sol\pp^mystérieux la sib
	do8 sib la sol
	re'8\fermata re\f^joyeusement do sib
	la8 la sib do
	re4( do8[ re])\fermata
	sib4 la
	sol4 r
	sib4(\< do)
	re4\fermata\! r \bar "|."
}

Paroles = \lyricmode {
	"1. De" la part Dieu, Ma -- dam', Mon -- sieur,
	Ve -- nons vous dire un grand mer -- ci
	De nous a -- voir re -- çus i -- ci,
	De l'part Dieu.
	
	"2. Qu'il" mett' des fruits dans vos pa -- niers,
	Du beau fro -- ment plein vos gre -- niers,
	Et du bon vin plein vos cel -- liers,
	Le Bon Dieu.
	
	"3. Jé" -- sus bé -- niss' tout' la mai -- son,
	Vos pe -- tit's fill's, vos grands gar -- çons,
	De tout not' cœur nous l'en pri -- ons,
	Le Bon Dieu.
	
	"4. S'il" ré -- com -- pense un seul verr' d'eau,
	Que fe -- ra_- t'il com -- me ca -- deau
	À qui nous l'a don -- née à seaux,
	Le Bon Dieu_?
	
	"5. Peut -" être un jour qu'on re -- vien -- dra
	"(On" n'sait ja -- mais c'qui ar -- riv' -- ra_!)
	Mais sûr qu'au Ciel on s're -- trouv' -- ra
	Chez l'Bon Dieu_; À Dieu_!
}

\score{
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \new Voice = "theme" {
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
