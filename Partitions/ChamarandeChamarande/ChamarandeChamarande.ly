%Compilation:lilypond ChamarandeChamarande.ly
%Apercu:evince ChamarandeChamarande.pdf
%Esclaves:timidity -ia ChamarandeChamarande.midi
\version "2.12.1"
\language "français"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4=120
  \time 3/4
  \key sol \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
	\repeat volta 2 {
		\partial 4 re8^\markup{\italic Refrain} re
		sol4 sol si8 re,
		sol4 sol si8 do
		re4. re8 do si
		la2 la8 si
		do4 do si8 la
		si4 si si8 sol
	}
	\alternative {
		{
			la4. re8 dod mi
			\partial 2 re2
		} {
			la4.^\markup{\italic (Couplet)} re,8 mi fad
			sol2 \bar "|."
		}
	}
}

Paroles = \lyricmode {
	Cha -- ma -- ran -- de_! Cha -- ma -- ran -- de_!
	Ton fou -- lard, comme à Gil -- well,
	Ne se don -- ne
	À per -- son -- ne
	Qu'aux vrais scouts Ba -- den_- Po -- well_!
	
	-ront te ren -- sei -- gner.
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
