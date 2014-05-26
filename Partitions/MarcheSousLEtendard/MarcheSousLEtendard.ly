\version "2.12.1"
\include "italiano.ly"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4=100
  \time 2/4
  \key fa \major
}

italique = {
  \override Score . LyricText #'font-shape = #'italic
}

roman = {
  \override Score . LyricText #'font-shape = #'roman
}

MusiqueTheme = \relative do' {
	do4 la'8. la16
	la8 la sol sol
	do4 do
	r8 sol fad sol
	do2~
	do8 sol fad sol
	la2~
	la4 r
	do,4 la'8. la16
	la8 la sol sol
	do4 do
	r8 do si la
	sol4. do8
	si4 re
	do2 \bar "||"
	
	r8^"Refr. Solo" fa, mi fa
	re8. do16 do4~
	do8 re--^Chœur mi-- < fa do' >
	< sib do >4 < sib do >
	r8^Solo fa mi fa
	re8. do16 do4~
	do8 re--^Chœur mi-- < sib' do >
	< la do >2~
	< la do >8 < la do > < la re > < la mi' >
	< la fa' >8. < la mi' >16 < la re >4~
	< la re >8 < la do > < la si > < la do >
	< sol sib >4 < mi sib' >4~
	< mi sib' >8 < sol sib > < sib do > <sib re >
	< sib mi >8. < sib re >16 < sib re >4~
	< sib re >8 < mi, sol > < mi fad > < mi sol >
	< la do >2
	r8^Solo fa mi fa
	re8. do16 do4~
	do8 re^Chœur mi < fa do' >
	< sib do >4 < sib do >
	r8^Solo fa mi fa
	re8. do16 do4~
	do8 re^Chœur mi < sib' do >
	< la do >2
	r8 < la do > < la re > < la mi' >
	< la fa' >8. < la mi' >16 < la re >4~
	< la re >8 < la do > sib la
	< fad re' >4 < fad re' >
	r8 sib la8. sol16
	< la do >2
	r8 < sib mi >8 < sib re >8. < sib do >16
	< la fa' >2~
	< la fa' >4 r \bar "|."
}

Paroles = \lyricmode {
	C'est nous les Scouts, c'est nous les Gui -- des_!
	Pas -- sons pre -- miers au droit che -- min,
	A -- fin d'en -- traî -- ner les ti -- mi -- des,
	Sans peur et sans res -- pect hu -- main_!
	
	Sous l'é -- ten -- dard ché -- ri
	\italique des Scouts de Fran -- ce
	\roman Ser -- rons bien fort nos rangs,
	\italique cœur con -- tre cœur_;
	Mar -- chons tou -- jours ar -- dents
	sans dé -- fail -- lan -- ce,
	Vers le de -- voir meil -- leur,
	d'un pas vain -- queur.
	\roman Pleins d'un joy -- eux é -- lan,
	\italique en -- trons en dan -- se 
	\roman Tous fra -- ter -- nel -- le -- ment,
	\italique pe -- tits et grands,
	Sous l'É -- ten -- dard ché -- ri
	des Scouts de Fran -- ce
	Ser -- rons gaî -- ment, ser -- rons les rangs_!
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
