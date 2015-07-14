%Compilation:lilypond LaGardeAuClairDeLune.ly
%Apercu:evince LaGardeAuClairDeLune.pdf
%Esclaves:timidity -ia LaGardeAuClairDeLune.midi
\version "2.12.1"
\language "français"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4=100
  \time 4/4
  \key re \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
	fad8 fad la la re4 la8 fad
	\bar "||" \time 2/4 fad2
	\bar "||" \time 4/4
	r8 mi8 mi fad la sol fad mi
	re4.( mi8) re4 r
	fad4 fad8 fad la la la la
	re2 dod
	si4 fad8 la la sol fad mi
	re2. r4
	re8[( dod]) re mi fad fad lad dod
	dod2 si
	dod4 dod8 dod si la sol fad
	sol2. r4
	mi8[( red]) mi fad sol si fad'8.\fermata mi16
	\bar "||" \time 3/4
	re4 fad,8 la dod8. si16
	la2.
	re,2 r4 \bar "|."
}

Paroles = \lyricmode {
	Au clair de la lune, un beau soir,
	C'é -- tait en Août, je me rap -- pel -- le_:
	J'é -- tais tout seul en sen -- ti -- nel -- le,
	Très fier de rem -- plir mon de -- voir,
	Et je voy -- ais dans la nuit bru -- ne
	Les toits de nos ten -- tes bril -- ler,
	Et les mé -- lè -- zes scin -- til -- ler,
	Au clair de la lu -- ne_!
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
