\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4=100
  \time 4/4
  \key fa \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueI = \relative do' {
  \partial 4
  fa8 la | sol8^"Le gamin" fa16 mi re8 mi fa do \bar ""
  fa8 la | sol8 fa16 mi re8 mi fa4\fermata \bar ""

  la8^"Le scout" do | do8 sib16 la sol8 la sib la \bar ""
  sol8 sib | la8 sol16 fa mi8 fa sol4\fermata \bar ""
  la8 do | do8 sib16 la sol8 la sib la \bar ""
  sol8 sib | la8 sol16 fa mi8 sol fa4\fermata
  \bar "|."
}

ParolesI = \lyricmode {
	Où vas_- tu, pe -- tit Scout de Fran -- ce,
	Où vas_- tu d'un pas si lé -- ger_?

	Je n'ai peur d'au -- cu -- ne dis -- tan -- ce,
	Du bon -- heur je suis mes -- sa -- ger_:
	Si tu veux ai -- mer l'ex -- is -- ten -- ce,
	A -- vec nous, viens la par -- ta -- ger_!
}

\score{
  <<
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \set Staff.autoBeaming = ##f
      \override Score.PaperColumn #'keep-inside-line = ##t
      \MetriqueArmure
      \new Voice = "I" {%\voiceOne
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
