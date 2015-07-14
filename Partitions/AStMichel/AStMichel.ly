% Lily was here -- automatically converted by /usr/bin/midi2ly from canon de la paix.mid
\version "2.18"



VoixUn = \relative c {
	\autoBeamOff
	\key d \minor
	a''2.~ a8. f16 |
	a2.~ a8. e16 |
	a2.~ a8. d,16 |
	a'2. a4 |
	bes8. a16 g8. a16 bes4 d |
	a f d2 |
	g8. f16 ees8. f16 g4 g4~ |
	g4 c8. bes16 a4~\fermata a8. g16 |
	\bar "|."
}

VoixUnCcl = \relative c {
	\autoBeamOff
	\key d \minor
	a''2.~ a8. f16 |
	a2.~ a8. e16 |
	a2.~ a8. d,16 |
	a'2. a4 |
	bes8. a16 g8. a16 bes4 d |
	a f d2 |
	g8. f16 ees8. f16 g4 g4~ |
	g4 c8. bes16 a2\fermata |
	\bar "|."
}

VoixDeux = \relative c' {
	\autoBeamOff
	\key d \minor
	f8. g16 f8. e16 f4 d |
	e e8.[ f16] g2 |
	f8. g16 f8. e16 f4 d |
	e1 |
	g4 e8. f16 g4 bes |
	d a f2 |
	g4 g8. a16 bes4 c |
	cis2 d\fermata |
}

VoixTrois = \relative c {
	\autoBeamOff
	\clef "G_8"
	\key d \minor
	d'4 d d d8. d16 |
	c4 c c c8. c16 |
	bes4 bes bes bes8. bes16 |
	a4 a a a8. a16 |
	g4 g g g8. g16 |
	f4 f f f8. f16 |
	ees4 ees ees ees8. ees16 |
	d4 d d\fermata d8. d16 |
}

VoixTroisCcl = \relative c {
	\autoBeamOff
	\clef "G_8"
	\key d \minor
	d'4 d d d8. d16 |
	c4 c c c8. c16 |
	bes4 bes bes bes8. bes16 |
	a4 a a a8. a16 |
	g4 g g g8. g16 |
	f4 f f f8. f16 |
	ees4 ees ees ees8. ees16 |
	d4 d d2\fermata |
}

VoixQuatre = \relative c {
	\autoBeamOff
	\clef bass
	\key d \minor
	d'4 a8. a16 d4 f |
	a,2 a |
	d4 bes8. bes16 d4 f |
	a,2 a |
	g4 bes8. bes16 d4 d4~ |
	d4 c8. bes16 a4 c4~ |
	c4 bes8. a16 g4 bes4~ |
	bes4 a8. a16 d4\fermata a |
}

VoixQuatreCcl = \relative c {
	\autoBeamOff
	\clef bass
	\key d \minor
	d'4 a8. a16 d4 f |
	a,2 a |
	d4 bes8. bes16 d4 f |
	a,2 a |
	g4 bes8. bes16 d4 d4~ |
	d4 c8. bes16 a4 c4~ |
	c4 bes8. a16 g4 bes4~ |
	bes4 a8. a16 d2\fermata |
}


ParolesVoixUn = \lyricmode {
	Saint Mi -- chel, ve -- nez à nous,
	Et com -- man -- dez à vos saints com -- pa -- gnons,
	Sus à l'en -- ne -- mi du roi Jé -- sus_! Tou-
}

ParolesVoixDeux = \lyricmode {
	jours nous le pour -- sui -- vrons sans fai -- blir,
	Saint Mi -- chel, com -- man -- dez_- nous_!
	Dé -- fen -- dez nous dans le com -- bat,
	Nous vain -- crons quand Dieu vou -- dra.
}

ParolesVoixTrois = \lyricmode {
	Pam pam pam pam pam
	pam pam pam pam pam
	pam pam pam pam pam
	pam pam pam pam pam
	pam pam pam pam pam
	pam pam pam pam pam
	pam pam pam pam pam
	pam pam pam pam pam
}

ParolesVoixQuatre = \lyricmode {
	La la la la la
	la la
	la la la la la
	la la
	la la la la la
	la la la la
	la la la la
	la la la la
}


\score {
	<<
	%\new StaffGroup { <<
		\new Staff { <<
			\tempo 4=100
			\new Voice = "VoixUn" {
				\VoixUn
			}
			\new Lyrics \lyricsto VoixUn {
				\ParolesVoixUn
			}
		>> }
		\new Staff { <<
			\new Voice = "VoixDeux" {
				\VoixDeux
			}
			\new Lyrics \lyricsto VoixDeux {
				\ParolesVoixDeux
			}
		>> }
	%>> }
	\new StaffGroup { <<
		\new Staff { <<
			\new Voice = "VoixTrois" {
				\VoixTrois
			}
			\new Lyrics \lyricsto VoixTrois {
				\ParolesVoixTrois
			}
		>> }
		\new Staff { <<
			\new Voice = "VoixQuatre" {
				\VoixQuatre
			}
			\new Lyrics \lyricsto VoixQuatre {
				\ParolesVoixQuatre
			}
		>> }
	>> }
	>>
	\layout{}
}


\score {
	<<
	%\new StaffGroup { <<
		\new Staff { <<
			\set Staff.midiInstrument = "flute"
			\set Staff.midiMinimumVolume = #0.7
			\set Staff.midiMaximumVolume = #0.9
			\tempo 4=100
			\new Voice = "VoixUn" {s1\mf
				s1*8
				s1*8
				\VoixUn
				s1*8
				\VoixUn
				\VoixUn
				\VoixUnCcl
			}
		>> }
		\new Staff { <<
			\set Staff.midiInstrument = "flute"
			\set Staff.midiMinimumVolume = #0.75
			\set Staff.midiMaximumVolume = #0.95
			\new Voice = "VoixDeux" {s1\mf
				s1*8
				s1*8
				s1*8
				\VoixDeux
				s1*8
				\VoixDeux
				\VoixDeux
			}
		>> }
	%>> }
	\new StaffGroup { <<
		\new Staff { <<
			\set Staff.midiMinimumVolume = #0.4
			\set Staff.midiMaximumVolume = #0.6
			\new Voice = "VoixTrois" {s1\mf
				\VoixTrois
				\VoixTrois
				\VoixTrois
				\VoixTrois
				\VoixTrois
				\VoixTrois
				\VoixTroisCcl
			}
		>> }
		\new Staff { <<
			\set Staff.midiMinimumVolume = #0.5
			\set Staff.midiMaximumVolume = #0.7
			\new Voice = "VoixQuatre" {s1\mf
				s1*8
				\VoixQuatre
				\VoixQuatre
				\VoixQuatre
				\VoixQuatre
				\VoixQuatre
				\VoixQuatreCcl
			}
		>> }
	>> }
	>>
	\midi{}
}
