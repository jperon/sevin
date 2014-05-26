%Compilation:lilypond .ly
%Apercu:evince .pdf
%Esclaves:timidity -ia .midi
\version "2.12.1"
\include "italiano.ly"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4=90
  \time 3/4
  \key mib \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do'' {
	\override Score.PaperColumn #'keep-inside-line = ##t
	\repeat volta 2 {
	\partial 16*11 do16^"Les scouts" do do lab lab sib sib do8. fa,16
	fa16 \bar "" do' do do lab lab sib sib do8. fa,16
	lab16 lab sib sib lab4( sol) \bar "||"
	\time 2/4
	fa8. \bar "" \tempo 4=40 fa16^"L'aumônier" lab8. sol16
	fa8. fa16 lab8. sib16
	do4 r8 do
	lab8. lab16 sib8. sib16
	lab4( sol)}
	\alternative{{\partial 16 fa16 |}{\partial 16 lab16\fermata-"Pour finir" |}}
	\bar "|."
}

Paroles = \lyricmode {
	Mais com -- ment fe -- rez_- vous, l'Ab -- bé_?
	Ma Doué_!
	Mais com -- ment fe -- rez_- vous, l'Ab -- bé,
	Pour nous di -- re la Mes -- se_?
	
	J'at -- tends, mes Scouts, pour cé -- lé -- brer,
	Que le plein jour pa -- rais -- se_!
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
