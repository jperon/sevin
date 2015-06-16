\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}

MetriqueArmure = {
  \tempo 4.=80
  \time 6/8
  \key la \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
  \partial 4. mi8 dod mi
  la4. si8 la si
  dod4~ dod8 si8 la si
  dod4. dod8 si la
  si4.~ si4 r8
  si4 si8 si dod si
  la4 mi8 la4~ la8
  si4 si8 si dod si
  la4 si8 si4.~
  si4 r8 mi, dod mi
  la4~ la8 si la si
  dod4 \bar "||" \break
  <la dod>8--^\markup {Chœur} <fad la>4-- <la dod>8--
  <si mi>4.-- r4 mi,8
  la8.\< si16 <la dod>8 <si re>\! <la dod> si
  <dod mi>4. r8 <la dod>4\pp
  <fad la>4. <mi si'>
  <dod la'>4 r8 \bar "|." \break
  \partial 2 <la' dod>8--^\markup {Chœur (\italic variante)} <sold la>4-- <fad la dod>8--
  <mi sold mi'>4.-- r4 mi8
  <dod la'>8.\< <mi si'>16 <la dod>8 <si re>\! <la dod> <mi si>
  <dod la' mi'>4. r8 <mi la dod>4\pp
  <fad la>4. <re fa si>
  <la mi' dod'>4. \bar "|."
}

Paroles = \lyricmode {
  Las -- sés du jour et de leur tâche,
  Sous les grand ar -- bres, d'or cri -- blés,
  Quit -- tant le bâ -- ton ou la hache,
  Tous les cam -- peurs sont ras -- sem -- blés,
  Voi -- ci la troupe à vos ge -- noux,
  
  \italique
  À vos ge -- noux_!
  Ô Da -- me des Bois de chez nous_!
  Bé -- nis -- sez_- nous_!
  À vos ge -- noux_!
  Ô Da -- me des Bois de chez nous_!
  Bé -- nis -- sez_- nous_!
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
	\Paroles
      }
    >>
\layout{}
\midi{}
}
