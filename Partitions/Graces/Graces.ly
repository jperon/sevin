%Compilation:lilypond Graces.ly
%Apercu:evince Graces.pdf
%Esclaves:timidity -ia Graces.midi
\version "2.12.1"
\language "français"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  %\tempo 4=100
  %\time 2/4
  \key la \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
	\cadenzaOn
	mi8^Solo mi fad mi \bar "" fad fad sold fad4 \bar "'"
	mi8 fad sold fad mi \bar "" dod mi fad mi4 \bar "||"
	mi8^Chœur mi fad mi \bar "||"
	sold8^Solo sold la sold \bar "" fad fad sold fad4 \bar "'"
	fad8 fad sold fad \bar "" mi fad fad sold4\fermata \bar "||"
	mi8^Chœur mi fad mi \bar "|."
}

Paroles = \lyricmode {
	De vos bien -- faits di -- vins, Sei -- gneur,
	Nous vous re -- mer -- ci -- ons de tout cœur.
	\italique De vos bien -- faits…
	\roman Gar -- dez_- nous purs, forts et joy -- eux
	Jus -- qu'au fes -- tin des Bien -- heu -- reux.
	\italique De vos bien -- faits…
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
