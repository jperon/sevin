\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4.=30
  \time 6/8
  \key sib \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
  <re fa>8.[(\p <mib sol>16]) <re fa>8 <sib re>4 r8
  <re fa>8.[( <mib sol>16]) <re fa>8 <sib re>4 r8
  <mib do'>4 << { \voiceOne do'16.[( la32])}
                \new Voice { \voiceTwo mib8 \oneVoice} >> <mib la>4.
  <re sib'>4 << { \voiceOne sib'16.[( fa32])}
                \new Voice { \voiceTwo re8 \oneVoice} >> <re fa>4.
  <mib sol>4\< <mib sol>8 <mib sib'>8.(\! la16) <mib sol>8
  <re fa>8.(\> <mib sol>16) <re fa>8\! <sib re>4.
  <mib sol>4 <mib sol>8 << { \voiceOne sib'8.[( la16])}
                           \new Voice { \voiceTwo mib4 \oneVoice} >> <mib sol>8
  <re fa>8. <mib sol>16 <re fa>8 <sib re>4 r8
  <sol' do>4 <sol do>8 <sol mib'>8.\< <sol do>16 <fa la>8
  <fa sib>4.(\! <fa re'>4) r8
  <re sib'>8.\pp fa16 re8 <do fa>8.\> <do mib>16 do8
  re4.~ re4\! r8 \bar "|."
}

ParolesI = \lyricmode {
  \set stanza = "1."
  Bel -- le nuit_! cal -- me nuit_!
  Dans les champs pas un bruit_;
  Au loin bril -- lent
  \set ignoreMelismata = ##t quel -- ques \unset ignoreMelismata
  lu -- eurs_:
  Des chau -- miè -- res de la -- bou -- reurs.
  Frè -- res Scouts, près du feu,
  En si -- lence a -- do -- rons Dieu_!
}

ParolesII = \lyricmode {
  \set stanza = "2."
  Bel -- le nuit_! gra -- ve nuit_!
  Sur les mers Dieu con -- duit
  Et \set ignoreMelismata = ##t
  dé -- robe aux
  \unset ignoreMelismata
  é -- cueils  trom -- peurs
  Bar -- ques frê -- les et grands va -- peurs.
  Pri -- ons bien pour tous ceux
  Qui ne dor -- ment pas chez eux.
}

ParolesIII = \lyricmode {
  \set stanza = "3."
  Bel -- le nuit_! sain -- te nuit_!
  Si Sa -- tan nous pour -- suit,
  Nos bons Anges nous gar -- de -- ront,
  Et pai -- si -- bles nous dor -- mi -- rons
  Sous la toile é -- ten -- dus
  En -- tre les bras de Jé -- sus_!
}

\score{
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \new Voice = "theme" {
	\override Score.PaperColumn #'keep-inside-line = ##t
	\MetriqueArmure
	\MusiqueTheme
      }
      \new Lyrics \lyricsto theme {
	\ParolesI
      }
      \new Lyrics \lyricsto theme {
	\ParolesII
      }
      \new Lyrics \lyricsto theme {
	\ParolesIII
      }
    >>
\layout{}
\midi{}
}
