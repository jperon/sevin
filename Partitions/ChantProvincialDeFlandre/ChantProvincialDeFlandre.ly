%Compilation:lilypond ChantProvincialDeFlandre.ly
%Apercu:evince ChantProvincialDeFlandre.pdf
%Esclaves:timidity -ia ChantProvincialDeFlandre.midi
\version "2.12.1"
\language "français"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4.=90
  \time 6/8
  \key fa \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
	fa4^\markup{\bold A \italic "Entrée (Bien rythmé)"} do8 fa4 sol8
	la4. fa4 la8
	do8([ sib]) la sol4 la8
	sol4.~ sol4 r8
	fa4 do8 fa4 sol8
	la4 la8 do8 sib([ la])
	sol4 sol8 sib la sol
	fa4.~ fa4 r8^\markup{D.C.} \bar ":|"
	mi'4^\markup{\bold B \italic Appel} mi8 mi do mi
	sol4 r8 mi4 r8
	sol4 sol8 sol mi do
	sol4 r8 r4.
	mi'4 mi8 mi do mi
	sol4 r8 mi4 r8
	sol8 mi do sol4 sol8
	do4 r8 r4.
	mi4 mi8 mi do mi
	sol4 r8 mi4 r8
	sol4 sol8 sol mi do
	sol4 r8 r4.
	mi'4 mi8 mi do mi
	sol4 r8 mi4 r8
	sol8 mi do sol4 sol8
	do4^\markup{D.C. de \bold A à \bold B} r8 r4. \bar "||"
	\time 2/4 \key sib \major \tempo 4 = 90
	re8^\markup{\bold C \italic Couplet} r sib r
	fa8 r sol r
	sol8 r fa r
	re'4\accent sib8 r
	re8 r sib r
	la8 r sol r
	sol8 r fa r
	mib'4~\accent mib8 r
	mib8 r do r
	la8 r do r
	do8 r la r
	sol4 fa8 r
	fa8 r sol r
	la8 r mib' r
	sol,8 r la r
	sib8 r8 r4 \bar "||"
	\time 6/8 \tempo 4. = 90
	la4.^\markup{\bold D \italic Refrain (entre chaque couplet)} sol8 la sol
	fa4. do4 r8
	fa4 sol8 la4 do8
	do8 sib la sol4.
	la4. sol8 la sol
	fa4. do4 r8
	fa4 la8 do[( sib]) sol
	fa4.~ fa4 r8
	la4.\ff sol8 la sol
	fa4. do4 r8
	fa4 sol8 la4 do8
	do8 sib la sol4.
	la4. sol8 la sol
	fa4. do4 r8
	fa4 la8 do[( sib]) sol
	fa4.~ fa4 r8 \bar "|."
	
}

Paroles = \lyricmode {
	Croix des Scouts de Fran -- ce,
	Qui vis le jour chez nous,
	Croix des Scouts de Fran -- ce,
	Pro -- tè -- ge_- nous, en -- traî -- ne_- nous_!
	
	En -- voy -- ez en ra -- fa -- les
	Aux clairs ac -- cents des cors
	Les no -- tes tri -- om -- pha -- les
	Du chant des Scouts du nord_;
	Ô pro -- vin -- ce fron -- tiè -- re,
	De la mer aux fo -- rêts,
	Que ta con -- signe al -- tiè -- re
	Nous gar -- de Tou -- jours Prêts_!
	
	La fu -- mée de nos u -- si -- nes
	Rend nos ho -- ri -- zons bru -- meux,
	Mais la joie scoute il -- lu -- mi -- ne
	Le ciel clair de nos yeux bleus.
	
	Frè -- res Scouts de Flan -- dre
	É -- cou -- tez ru -- gir le Lion Noir_;
	Il nous fait en -- ten -- dre
	L'ap -- pel du de -- voir.
	C'est les Scouts de Flan -- dre,
	É -- cou -- tez ru -- gir le Lion Noir_;
	Il nous fait en -- ten -- dre
	L'ap -- pel du de -- voir.
}

\score{
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \new Voice = "theme" {
	\override Score.PaperColumn #'keep-inside-line = ##t
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
