%IMPOSTAZIONI GENERALI
\version "2.19.83"
#(set-global-staff-size 18)
\header{
title = \markup {\fontsize #0.5 \bold 
		\smallCaps "Introduzione a Lilypond - Primo Incontro" }
	}




%ALTEZZE
\markup {\fontsize #1.5 \bold \smallCaps "Altezze" }

\relative c'{ c4 d e f g a b c \bar"|"  
					 \stopStaff s s s s 
					 \startStaff		 c,4 c' c'' c, c,, 
					 					\bar"|"} 
	

%RITMO
					 
\markup {\fontsize #1.5 \bold \smallCaps "Ritmo" }	
			 
\relative c'{ \cadenzaOn%per eliminare le battute
 		g'\longa g\breve g1 g2 g4 g8 g16 g32 g64 g128 
									\bar"|"}

\relative c'{ \cadenzaOn %per eliminare le battute
 		r\longa r\breve r1 r2 r4 r8 r16 r32 r64 r128 
									\bar"|"}



%TEMPI
\markup {\fontsize #1.5 \bold \smallCaps "Tempi" }
									
{\hideNotes %per nascondere tutte le note 
	\time 2/4 c8 s4.
	\time 3/4 c8 c4 c4.
	\time 25/16 c4 c2 c2. c16
	\time 10/10 c1}
	
	
%ALTERAZIONI
\markup {\fontsize #1.5 \bold \smallCaps "Alterazioni" }

\relative c'{
\cadenzaOn
		g'1 gis	g1 ges	g!1 g?1 \bar"|"	
						gih geh \bar"|"
						gisih geseh \bar"|"
									}

%ALTERAZIONI IN CHIAVE
\markup {\fontsize #1.5 \bold \smallCaps "Alterazioni in chiave" }

\relative c'{
\hideNotes
\key c \major
c1
\key c \minor
c1
\key d \major
c1
\key bes \major
c1 }


%DINAMICA
\markup {\fontsize #1.5 \bold \smallCaps "Dinamica" }
\relative c' {
\cadenzaOn
g'8\sfz s4	 g\fffff s4 
g8\ffff  s4 g8\fff s8 
g8\ff  s8 g8\f s8 
g8\mf s4  g8\mp s8 
g8\p s8 g8\pp s8
g8\ppp  s4 g8\pppp s4. 
g8\ppppp s4 
\bar"|"}


%LEGATURA DI VALORE
\markup {\fontsize #1.5 \bold \smallCaps "Legature di valore e d' espressione" }
\relative c' {
\cadenzaOn
c4~c4  s4 	c8(f8) c16(d e f)
\cadenzaOff
 s4 c8(f8) c16(d e f)
 \bar"|"
}


%STANGHETTE
\markup {\fontsize #1.5 \bold \smallCaps "Stanghette" }
\relative c' {c1 \bar"|" c1 \bar"'" c1 \bar"!" c1 \bar";"  c1  \bar"||"  c1 \bar"|."}

