%[1]   VERSIONE ==============
\version "2.19.83"

%[2]  BLOCCO PAPER==================================
\paper {  #(set-paper-size "a4" )
   top-margin = 1\cm
   after-title-space = 10\mm
   bottom-margin = 2\cm
   indent = 20\mm
   line-width = 150\mm
   line-width = #(- line-width (* mm  3.000000) (* mm 1))
}

%[3]  BLOCCO HEADER==================================
 \header { title = "TITOLO"
subtitle = "sottotitolo"
composer = "compositore"
	}

%[4]  BLOCCO NOTAZIONE==================================
primoStrumento= \relative c'{ \time 2/4 c4 d8 e f4 g4 r2  c2  ees2 g2 c2\fermata}
secondoStrumento= \relative c'{ c4 d8 e f4 g4 r2  g2 c2 c2 g2\fermata}
terzoStrumento= \relative c { c4 d8 e f4 g4 r2 c2 c,2 c,2  c2\fermata \bar"|."}

%[5]  BLOCCO IMPOSTAZIONE RIGHI==========================
primorigo = \new Staff \with {
\clef treble
instrumentName = "Violino"  }{\primoStrumento}
secondorigo = \new Staff \with {
\clef alto
instrumentName = "Viola" }{\secondoStrumento}
terzorigo = \new Staff \with {
\clef bass
instrumentName = "Violoncello" }{\terzoStrumento}


%[6]  BLOCCO SCORE==================================
       \score { %apre il Macro-blocco Score [6]
     %[6a]  parti da includere========================
<<
 \new GrandStaff <<
	\primorigo
	\secondorigo
	\terzorigo
		>>
	>>

%[6b] PERSONALIZZAZIONE GRAFICA==========
 \layout {
  \context {\Staff
\override TimeSignature.font-size = #6
} %chiude la sezione Context
} %chiude la sezione Layout

%[6c] OUTPUT MIDI===================
\midi {  \tempo 4=110 }
} %chiude il Macro-blocco Score