\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4=110
  \time 2/4
  \key sol \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueI = \relative do' {
  re4 | sol4 sol8. fad16 | mi4
  mi4 | la4 la8. sol16 | fad4
  fad4 | si4 si8. la16 | sol8.
  fad16 mi8. re16 | do4 si | mi2 | re4
  re4 | sol4 sol8. fad16 | mi4
  mi4 | la4 la8. sol16 | fad4
  fad4 | si4 si8. la16 | sol4 fad | sol2~ | sol4
  \bar "||"

  re4^"Refrain" | sol4 fad8. <mi sol>16 | <re fad la>4
  <re sol si>4 | <re la' do>4. <re sol si>8 | <re fad la>4
  re4 | <re fad la>4 <re mi sol>8. <re fad la>16 | <sol si>4
  <sol la do>4 | <sol si re>4. <sol la do>8 | <sol si>4 \breathe
  sol4 | <sol do mi>4 <sol do mi>8. <sol si re>16 | <sol la do>4
  << \voiceOne la \new Voice {\voiceTwo fad8[ mi]} >> | <fad la re>4 <re fad re'>8. <re fad do'>16 | <mi sol si>4
  << \voiceOne sol \new Voice {\voiceTwo mi8[ re]} >> | <do mi do'>4 <la sol' do>8. <la sol' si>16 | <re sol la>4
  <re fad re'>4 | <sol,~ re'~ sol~ si~>2 | <sol re' sol si>8 r
  \bar "|."
}

ParolesI = \lyricmode {
  La rou -- te qu'on suit
  Le front dans la nuit
  Ja -- mais ne con -- duit
  U -- ne dé -- mar -- che sû -- re_:
  Le pied se dé -- bat,
  Il fait des faux_- pas,
  Se lasse et n'a -- van -- ce pas_:

  So -- leil, lè -- ve_- toi,
    rem -- plis les cieux,
  So -- leil, lè -- ve_- toi,
    rem -- plis nos yeux :
  Le mon -- de n'est beau
  Que sous ton flam -- beau,
  Rem -- plis_- le d'un jour
    nouveau_!
}

\score{
  <<
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \override Score.PaperColumn #'keep-inside-line = ##t
      \MetriqueArmure
      \new Voice = "I" {%\voiceOne
        \partial 4
        \MusiqueI
      }
      \new Lyrics \lyricsto I {
        \ParolesI
      }
    >>
  >>
  \layout{}
  \midi{}
}
