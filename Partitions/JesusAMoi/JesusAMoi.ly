\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 2.=30
  \time 3/2
  \key do \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueI = \relative do'' {
  \partial 2. sol4 sol la
  mi2. sol4 sol la
  fa1 mi2
  re2. mi4 fa sol
  mi2. sol4 sol la
  mi2. sol4 la si
  do1 do2
  si2. si4 do do
  re1 \bar "||"
  sol,2^"Refrain"
  mi'2. do4 mi, la
  sol2. sol4 sol la
  fa2. fa4 fa sol
  mi2. mi4 la si
  do2. la4 do re
  mi1 mi2
  re2. la4 si do
  si1 sol2
  mi'2. do4 mi, la
  sol1 re'2
  do1.~
  do2. \bar "|."
}

MusiqueII = \relative do' {
  mi4 mi mi
  do2. mi4 mi mi
  re1 do2
  si2. do4 re mi
  do2. mi4 mi mi
  do2. mi4 fa fa
  mi1 sol2
  sol2. sol4 fad fad
  fa1
  fa2
  sol2. mi4 do fa
  mi2. fa4 fa fa
  re2. re4 re re
  do2. do4 do re
  mi2. mi4 mi la
  sold1 sold2
  la2. fa4 fad fad
  fa1 fa2
  sol2. mi4 do fa
  mi2( fa) fa
  mi1.~
  mi2.
}

MusiqueIII = \relative do' {
  do4 do la
  mi2. do4 do do
  si'1 do2
  sol2. sol4 sol sol
  sol2. do4 do fa,
  sol2. do4 do la
  sol1 do2
  re2. re4 re la
  si1
  si2
  do2. sol4 sol do
  do2. re4 re re
  si2. si4 si si
  do2. do4 do si
  la2. do4 la la
  si1 si2
  la2. re4 re la
  si1 si2
  do2. sol4 sol do
  do2( si) sol
  mi1.~
  mi2.
}

MusiqueIV = \relative do {
  do4 do do
  do2. do4 do do
  sol'1 sol2
  sol2. sol4 sol sol
  do,2. do4 do do
  do2. do4 do do
  do1 do2
  re2. re4 re re
  sol1
  sol2
  do,2. do4 do do
  do2. sol'4 sol sol
  sol2. sol4 sol sol
  do,2. la'4 la la
  la2. la4 la fa
  mi1 mi2
  fa2. fa4 re re
  sol1 sol2
  do,2. do4 do do
  do4( mi sol2) sol2
  do,1.~
  do2. \bar "|."
}

Paroles = \lyricmode {
  Loin des ru -- meurs et de la foule,
  Je veux me re -- cueil -- lir,
  La paix du ciel en moi s'é -- coule_:
  Je sens Dieu m'en -- va -- hir_!
  
  \italique
  Jé -- sus_! tu es à moi_!
  De ton a -- mour les liens me tiennent,
  Ton cœur est mien, mon â -- me tienne_;
  Je t'ai don -- né ma foi_!
  Jé -- sus, Jé -- sus, tu es à moi_!
}

\score{
  \new ChoirStaff <<
    \new Staff <<
      \set Staff.autoBeaming = ##f
      \set Staff.midiInstrument = "recorder"
      \new Voice = "soprano" {\voiceOne
	\override Score.PaperColumn #'keep-inside-line = ##t
	\MetriqueArmure
	\MusiqueI
      }
      \new Voice = "alto" {\voiceTwo
	\override Score.PaperColumn #'keep-inside-line = ##t
	\MusiqueII
      }
      \new Lyrics \lyricsto soprano {
	\Paroles
      }                       
    >>
    \new Staff <<
      \set Staff.autoBeaming = ##f
      \set Staff.midiInstrument = "flute"
      \clef bass
      \new Voice = "tenor" {\voiceOne
	\override Score.PaperColumn #'keep-inside-line = ##t
	\MetriqueArmure
	\MusiqueIII
      }
      \new Voice = "basse" {\voiceTwo
	\override Score.PaperColumn #'keep-inside-line = ##t
	\MusiqueIV
      }                  
    >>
  >>
\layout{}
\midi{}
}
