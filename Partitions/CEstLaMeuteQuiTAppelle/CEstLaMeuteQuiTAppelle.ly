\version "2.18"

\score{
  \new Staff \relative c'{
    \set Staff.midiInstrument = "flute"
    \autoBeamOff
    \tempo 4=130
    \key f \major
    \time 2/4
    f8. f16 f8. g16 | a8. bes16 c8. a16 |
    c4 c \bar "||" \time 3/4 bes8. a16 g2 \bar "||"
    \time 2/4 g8. g16 c8. bes16 | a8. g16 a8. f16 |
    f4 f \bar "||" \time 3/4 e8. d16 c2 \bar "||"
    \time 2/4 c'8. c16 c8. d16 | c8. bes16 a8. g16 |
    f8. f16 f8. a16 \bar "||" \time 3/4 g8. f16 c'4. r16
    c \bar "||" \time 2/4 c4 g8. c16 | c4 a8 r | c8. bes16 a8. g16 | f2 \bar "|."
  }
  \addlyrics {
    C'est la Meu -- te qui t'ap -- pel -- le,
    Viens, viens, lais -- se tout_!
    Que f'rais tu, ô loup sans el -- le_?
    Viens, viens, lais -- se tout_!
    Que f'rais tu, ô loup sans el -- le,
    Et sans toi que fe -- rions -nous_?
    Cours vi -- te, cours vi -- te,
    Vite au ren -- dez_- vous.
  }
  \layout{}
  \midi{}
}
