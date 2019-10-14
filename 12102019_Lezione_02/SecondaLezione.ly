\version "2.19.83"
#(set-global-staff-size 18)
			

\paper {

#(set-paper-size "a4" )
 			 top-margin = 2\cm
  			after-title-space = 50\mm
  			bottom-margin = 2\cm
  			indent = 20\mm
  line-width = 180\mm
  line-width = #(- line-width (* mm  3.000000) (* mm 1))
  line-width = 180\mm - 2.0 * 10.16\mm
}





\markup{ACCORDI}

\relative c'{

<c   g'  d'>4 <c f  g g'>4  <bes g' c d f>4  < des aes' c ees>
			
		}
		


	
		
\markup{FIGURE IRREGOLARI}

\relative c'{
 \time 2/4   \tuplet 3/2 { c8 [c c]} r4 \tuplet 3/2 { c4 c c }
\time 3/4    \tuplet 2/3 {c4 ges'} \tuplet 4/6 {c,8 [f aes bes] }  \tuplet 5/4 { c16 [d e f g]} r2}
		
		
	

\markup{DUE VOCI}
 <<
 \relative c' { \key c \minor s1  
 					s1
					r8  g''16^( fis g8) c,^. ees^. g16^(fis g8) a^. 
  					 d,^. g16^(fis  g8) a^.  cis,16^. d^. ees4^( d16 c
					 bes8)} 
  \\
  \relative c' {\key c \minor   r8  c'16^( b c8) g^. aes^. c16^( b c8) d^. 
  					 g,^. c16^( b  c8) d^.  f,16^. g^. aes4^( g16 f
					 ees16) c'^. b^. a^. g^. f^. ees^. d^. c8  ees' d c
					 bes a bes c fis, g aes f 
					 g4}
>>



 <<
 \relative c' {\hideNotes \key c \minor s1  
 					s1
					} 
  \\
  \relative c' {\hideNotes  \key c \minor   s1 \break s1}
>>










\markup{MARKUP}

\relative c'  {


  d2_\markup { \italic "due minime" }
  e
  r1
  r1
  b1^\markup { \bold { semi \italic  breve } }
  r1
  r1
  c-\markup { \bold \large Altra}
  r1
  r1
  d''^\markup { \italic questo è \smallCaps Un Re }
}





\markup{ABBELLIMENTI}

\relative c' {c4 \grace b16 a4 \grace { b16 c16 } a2 \acciaccatura d8 c4 \appoggiatura e8 d4 g2\glissando g' <c,, ees g c d g>1\arpeggio  d1\startTrillSpan	d1	c2\stopTrillSpan r2} 


\markup{Diteggiatura}

\relative c' {c4-1 d-2 f-4 e-3 <c-1 e-2 g-3 bes-4>2 <d-1 f-2 a-3 c-5>}





 







		
	







\header {
tagline = " "
}
