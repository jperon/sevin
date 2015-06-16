\version "2.12.1"
\language "français"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4=80
  \time 2/4
  \key fa \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do'' {
	\partial 4 la8 sib16 la
	sol8 sol sol la
	fa16[( sol]) la8 la sib16 la
	sol8 sol fad sol
	do4 la8 sib16 la
	sol8 sol sol la
	fa16[( sol]) la8 la sib16 la
	sol8 fad sol la
	fa4 sol8 sol16 do
	si8 si la si
	la8 sol sol sol16 la
	sol8 fa re fa
	mi4 sol8 sol16 do
	si8 si la si
	la8 sol sol la
	sol4 fad16 sol la sol
	\bar "||" \time 6/8 do4.~ do4 r8
	la8^Refrain sib8. la16 sol4.
	sol8 la8. sol16 fa4.
	fa8 sol8. fa16 mi8 re do
	do8 sol' la fa16[( sol]) la4
	< do, la' >8 < do sib' >8. < do la' >16 < do sol' >4.
	< fa re' >8 < fa re' >8. < fa re' >16 < mi do' >4.
	< sib sol' >8 < sib sol' > < sib sol' > < do sol' >4 < fa la >8
	< fa la >4.~ < fa la >8 r4 \bar "|."
}

Paroles = \lyricmode {
	Toute au -- tre règle é -- tant fra -- gi -- le,
	Les hom -- mes n'ont rien in -- ven -- té,
	Et les Scouts ont pris l'É -- van -- gi -- le
	Pour co -- de de fra -- ter -- ni -- té_;
	N'ay -- ons pas peur de le re -- li -- re
	Et de le mé -- di -- ter tout bas_:
	Son di -- vin char -- me nous at -- ti -- re,
	Et Jé -- sus nous y tend les bras_!
	
	Ai -- mons- nous mieux, ai -- dons- nous plus,
	La vie, mes frères, en se ra plus lé -- gè -- re_;
	Ai -- mons- nous mieux, ai -- dons- nous plus,
	C'est la loi de Jé -- sus_!
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
