%[1]   VERSIONE ==============
\version "2.19.83"

%[2]  BLOCCO PAPER==================================
\include "template/paper.ly"

%[3]  BLOCCO HEADER==================================
 \header { title = "TITOLO"
subtitle = "sottotitolo"
composer = "compositore"}

%[4]  BLOCCO NOTAZIONE==================================
\include "template/01parteViolino.ly"
\include "template/02parteViola.ly"
\include "template/03parteCello.ly"

%[5]  BLOCCO IMPOSTAZIONE RIGHI==========================
\include "template/TrioArchi.ly"


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