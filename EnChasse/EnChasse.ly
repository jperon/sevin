%Compilation:lilypond .ly
%Apercu:evince .pdf
%Esclaves:timidity -ia .midi
\version "2.12.1"
\include "italiano.ly"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4.=90
  \time 6/8
  \key sol \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do' {
	re4\p^Chœur re8 re si re
	sol4.~ sol4 re8
	sol4. la
	si4. sol
	<< {
		si4\cresc si8 si la sol
		si4.~ si4 sol8
		si4. do
		re4. re\fermata\!
	} {
		re,4 re8 re si re
		sol4.~ sol4 re8
		sol4. la
		si4. si
	} >>
	\bar "||"
	r4^\markup{\bold A} re,8\p\< re si re
	sol4 << {
		sol8 sol re sol
		si4\! si8 si sol si
		re8 do si la si sol
		la4\fermata
	} {
		re,8 re si re
		sol4 sol8 sol re sol
		si8 la sol re sol si,
		re4
	} >>
	re8\p^écho re si re
	sol4 sol8 << {
		sol8 re sol
		si4 si8 si sol si
		re8 do si la sol la
		sol4.\fermata^Fin
	} {
		re8 si re
		sol4 sol8 sol re sol
		si8 la sol re si re
		si4.
	} >>
	\bar "||"
	
	<< {
		si'8\mf si si
		si4 la8 si4 do8
		re4 re8 si si si
		si4 la8 si4 do8
		re4.\fermata la8 la la
		la4 si8 do4 re8
		do4 si8 re do si
		re8[( do]) si
		la8[( si]) sol
		la4\fermata r8 la8 la la
		la4 si8 do4 re8
		do4 si8 re do si
		re8 do si la sol la
		sol4\fermata r8 re sol la
		si4 sol8 re sol la
		si4 sol8 re' do si
		la8 si sol la4.~
		la4.\fermata re,8 sol la
		si4 sol8 re sol la
		si4 sol8 re'^\markup{\italic rall.} do si
		la8 sol la sol4.
	} {
		sol8 sol sol
		sol4 re8 sol4 la8
		si4 si8 sol sol sol
		sol4 re8 sol4 la8
		si4. re,8 re re
		re4 sol8 la4 si8
		la4 sol8 si la sol
		si8[( la]) sol re[( sol]) s
		re4 r8 re re re
		re4 sol8 la4 si8
		la4 sol8 si la sol
		si8 la sol re si re
		si4 r8 s si re
		sol4 re8 s si re
		sol4 re8 si' la sol
		re8 sol si, re4.~
		re4. s8 si re
		sol4 re8 s do re
		sol4 re8 si' la sol
		re8 si re si4.
	} >>
	<< {
		si'4^\markup{Solo \italic marcato} re8 si sol la
		si8 do si la4.
		re4 re8 si sol la^\markup{\italic rall.}
		si8^\markup{Reprendre de \bold A jusqu'à Fin} do si la sol la
		sol2.\fermata
	} {
		s4 si8 sol si, re
		sol8 la sol re4.
		si'4 si8 sol si, re
		sol8 la sol re si re
		si2.
	} >>
	\bar "||"
	
	r4. re8^Solo << {
		sol8 la
		si4. la8 si do
		si4. la8 si do
		si4. la8 si la
		sol4. la8 si do
		si4. la8 si sol
		la4.\fermata re,8 sol si
		re4. si8 re do
		si4 re,8 si' si si
		si4 si8 sol4 la8
		la4. re,8 sol la
		si4. la8 sol la
		sol4.^\markup{\italic rall.} re8^Chœur re'\fermata do
		si4. la8 sol la
		sol4.\fermata
	} {
		si,8 re
		sol4. re8 sol la
		sol4. re8 sol la
		sol4. re8 sol re
		si4. re8 sol la
		sol4. re8 sol si,
		re4. s8 si sol'
		si4. sol8 si la
		sol4 s8 sol sol sol
		sol4 sol8 si,4 re8
		re4. s8 si re
		sol4. re8 si re
		si4. s8 si' la
		sol4. re8 si re
		si4.
	} >>
	r4.^\markup{D.C.} \bar "|."
}

Paroles = \lyricmode {
	Le gi -- bier est nom -- breux,
	La chasse ou -- ver -- te,
	Viens par les bois om -- breux,
	La lan -- de ver -- te,
	La la la la la
	la la la la la
	la la la la la
	la la la la la la
	la la la la la
	la la la la la
	la la la la la
	la la la la la la.
	
	A -- mis, ve -- nez, la chasse est bel -- le,
	Par les grands bois et les tail -- lis_;
	Je sais u -- ne chas -- se nou -- vel -- le
	Qui ten -- te -- ra les plus har -- dis_:
	C’est un gi -- bier qui se re -- bel -- le
	Et se dé -- fend dans ses ter -- riers mau -- dits
	Al -- lons, en chas -- se_!
	Sui -- vons la tra -- ce
	De ce gi -- bier mal -- fai -- sant_: 
	De vos fa -- ti -- gues
	Soy -- ez pro -- di -- gues, 
	Don -- nez jus -- qu’à vo -- tre sang.
	Gais chas -- seurs, vous i -- rez par les bois
	Dé -- bus -- quer les grands loups qui s’en -- fuient aux a -- bois.
	
	Et quand en -- fin vous lan -- ce -- rez
	La meute ar -- dente en rangs ser -- rés,
	La meute ar -- dente en rangs ser -- rés,
	Par les ra -- vins et les clai -- riè -- res,
	A -- lors, dans un joy -- eux hour -- ra_!
	Tou -- te la Fran -- ce vous sui -- vra,
	Tou -- te la Fran -- ce vous sui -- vra_!
}

\score{
    \new Staff <<
      \set Staff.midiInstrument = "french horn"
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
