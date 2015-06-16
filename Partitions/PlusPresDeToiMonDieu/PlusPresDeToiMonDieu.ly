\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 2.=50
  \time 6/4
  \key sol \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueI = \relative do'' {
  si2.\p la2^\markup {\italic {Assez lent, grave et ardent}} sol4
  sol2 mi4 mi2.
  re2. sol2 si4
  la2.~ la2 \oneVoice r4 \voiceOne
  si2. la2 sol4
  sol2 mi4 mi2.
  re2( sol4) fad2 la4
  sol2.~ sol2 \oneVoice r4 \voiceOne
  re'2.\mf mi2^\markup {\italic {un peu plus vite}} re4
  re2 si4 re2.
  re2. mi2 re4
  re2 si4 la2.
  si2.\pp la2 sol4
  sol2 mi4 mi2.
  re2( sol4) fad2 la4
  sol2.~ sol2 \oneVoice r4 \bar "|."
}

MusiqueII = \relative do' {
  re2. do2 si4
  mi2 do4 do2.
  re2. re2 re4
  re2.~ re2 s4
  re2. do2 si4
  mi2 do4 do2.
  si2 re4 re2 re4
  re2.~ re2 s4
  sol2. sol2 sol4
  sol2 sol4 sol2.
  sol2. sol2 sol4
  re2 re4 re2.
  re2. do2 si4
  mi2 do4 do2.
  si2 re4 re2 re4
  re2.~ re2 s4
}

MusiqueIII = \relative do' {
  sol2. fad2 sol4
  do2 sol4 sol2.
  si2. sol2 sol4
  fad2.~ fad2 \oneVoice r4 \voiceOne
  sol2. fad2 sol4
  do2 sol4 sol2.
  sol2( si4) la2 do4
  si2.~ si2 \oneVoice r4 \voiceOne
  si2. do2 si4
  si2 sol4 si2.
  si2. do2 si4
  la2 sol4 fad2.
  sol2. fad2 sol4
  do2 sol4 sol2.
  sol2( si4) la2 do4 si2.~
  si2 \oneVoice r4
}

MusiqueIV = \relative do' {
  sol2. re2 mi4
  do2 do4 do2.
  re2. si2 sol4
  re'2.~ re2 s4
  sol2. re2 mi4
  do2 do4 do2.
  re2. re2 re4
  sol,2.~ sol2 s4
  sol'2. sol2 sol4
  sol2 sol4 sol2.
  sol2. do,2 sol'4
  fad2 sol4 re2.
  sol2. re2 mi4
  do2 do4 do2.
  re2. re2 re4
  sol,2.~ sol2 s4
}

Paroles = \lyricmode {
  Je crois en toi, mon Dieu,
  Je crois en toi_;
  L'ombre a voi -- lé mes yeux,
  Mais j'ai la Foi.
  Ta pa -- role, ô mon Roi,
  M'a cour -- bé sous ta Loi_:
  Je crois en toi, mon Dieu,
  Je crois en toi_!
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