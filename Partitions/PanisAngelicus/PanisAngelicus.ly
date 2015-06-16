\version "2.16"
\language "français"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4=69
  \time 4/4
  \key mib \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
  <mib sol>2\mp\< <mib sol>4 <mib sol>\!
  <re sib>4.\> <re lab>8 <mib sol>2\!
  <lab do>4( <sol sib>) <fa lab> <mib sol>
  <mib sol>4.\> <re fa>8 <re fa>2\!
  <re fa>2 <re fa>4 <re fa>
  <fa lab>4. <mib sol>8 <mib sol>2
  <mib sol>2\< <mib sol>4 <mib do'>\!
  <re sib'>2(\f <mib la>4.) <mib la>8
  <re sib'>4 r r2
  <do' mib>2\f\> <sib re>4 <lab do>\!
  <lab do>4. <sol sib>8 <sol sib>2 \breathe
  <re fa>2\p <re fa>4 <re fa>
  <mib sol>4. <fa lab>8 <sol sib>2 \breathe
  <lab do>2\accent <lab do>\accent
  <sol sib>2 <mib sol>4 <fa lab>
  <mib sol>2( <re fa>4.) mib8
  mib2 r \bar "|."
}

ParolesI = \lyricmode {
  \set stanza = "1."
  Le Pain des An -- ges saints de -- vient notre a -- li -- ment,
  Et le sym -- bole an -- cien fait place au Sa -- cre -- ment.
  Ô mer -- veille, ô stu -- peur_!
  L'humble es -- cla -- ve, vrai -- ment
  Se nour -- rit du Corps du Sei -- gneur_!
}

ParolesII = \lyricmode {
  \set stanza = "2."
  Ô Sain -- te Tri -- ni -- té, vous que nous sup -- pli -- ons,
  Dai -- gnez nous vi -- si -- ter com -- me nous vous pri -- ons_:
  Par vos sen -- tiers à vous,
  Que tous nous at -- tei -- gnions
  La lu -- mière où vous ha -- bi -- tez_!
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
    >>
\layout{}
\midi{}
}
