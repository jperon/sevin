%Compilation:lilypond .ly
%Apercu:evince .pdf
%Esclaves:timidity -ia .midi
\version "2.12.1"
\language "français"

\header {
  tagline = ""
  composer = ""
}                                        

MetriqueArmure = {
  \tempo 4=120
  \time 4/4
  \key do \major
}

italique = { \override Score . LyricText #'font-shape = #'italic }

roman = { \override Score . LyricText #'font-shape = #'roman }

MusiqueTheme = \relative do'' {
	\partial 8*3 sol8 mi fa
	sol4 do8 do mi mi re re
	do2 do8 sol mi fa
	sol4 do8 do mi mi re do
	re2 r8 sol, mi fa
	sol4 do8 do mi mi re re
	do2 do8 sol la lad
	si4 si8 re la sold la re
	sol,2. r4
	re'4 re8 do si la sol re'
	do2 do4 r
	re4 re8 do si la sol re'
	mi2. r4
	re4 re8 do si la sol re'
	do2 do4 r
	re4 re8 mi re do si la
	sol4 r8 sol sol la si la
	sol4. si8 si do re do
	si4. re8 re mi fa mi
	re8 do si la sol4 re'
	do2 r4 \times 2/3 {sol8 la si}
	do4 sol mi8. sol16 si8. la16
	sol2 sol8 r \times 2/3 {sol8 la si}
	do4. si8 do si do dod
	re2 r4 la8. do16
	si4. re,8 mi fa si8. la16
	sol2 sol4 sol8. mi16
	re4 sol-. si-. la-.
	re2~ re8 r \times 2/3 {sol,8 la si}
	do4 sol mi8. sol16 si8. la16
	sol2 sol8 r \times 2/3 {sol8 la si}
	do4. si8 do si do dod
	re2 r4 la8. do16
	si4. re,8 mi fa si8. la16
	sol2 sol4 sol8. mi16
	la4 la8. fa16 si4 si8. sol16
	\partial 8*5 do2~ do8 \bar "|."
}

Paroles = \lyricmode {
	En -- ten -- dez_- vous, à tra -- vers l'es -- pace im -- men -- se,
	La voix des mers, des mon -- ta -- gnes, des fo -- rêts,
	Qui nous ap -- pelle à jou -- ir de nos va -- can -- ces
	Sur le ri -- vage, ou sous les om -- bra -- ges frais_?
	Quit -- tons la ville et ses u -- sa -- ges,
	Ses tram -- ways et ses ma -- ga -- sins,
	Et vi -- vons com -- me des sau -- va -- ges
	Sans ê -- tre pour ça des gre -- dins.
	Sous la toi -- le la nuit, au grand so -- leil le jour,
	Nous au -- rons des cou -- leurs quand vien -- dra le re -- tour.
	
	\italique Al -- lons, en -- fants, as -- ti -- quez les ga -- mel -- les,
	Pré -- pa -- rez tout, vos sacs et vos bâ -- tons,
	Des clous neufs à tou -- tes les se -- mel -- les,
	Et de l'eau dans vos bi -- dons,
	Al -- lons, en -- fants, vite on se met en rou -- te,
	On cau -- se -- ra ce soir en bi -- voua -- quant_;
	D'un pas vif, par -- tons, joy -- eux Es -- cou -- tes,
	Pour le camp, pour le camp, pour le camp.
}

\score{
    \new Staff <<
      \set Staff.midiInstrument = "flute"
      \new Voice = "theme" {
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
