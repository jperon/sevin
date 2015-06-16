%Compilation:lilypond .ly
%Apercu:evince .pdf
%Esclaves:timidity -ia .midi
\version "2.12.1"
\language "français"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4.=80
  \time 6/8
  \key re \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
	fad8^"Simple et sans lenteur" sol la si4.
	re8 dod si la4 fad8
	fad8 sol la si4.
	re8 dod si si4 la8
	re,8 mi fad si la4
	mi8 fad re8~ re4. \bar "|."
}

Paroles = \lyricmode {
	Sei -- gneur Jé -- sus,	Vier -- ge Ma -- ri -- e,
	Et tous les Saints de la Pa -- tri -- e,
	Pro -- té -- gez la France au -- jourd' hui_!
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
