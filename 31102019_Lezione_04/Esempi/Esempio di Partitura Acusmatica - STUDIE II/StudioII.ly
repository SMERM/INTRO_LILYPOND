\version "2.19.83"
#(set-global-staff-size 28)


 \paper {           	#(set-paper-size "a4landscape") 
          	two-sided = ##t 
                  top-margin = 10\mm 
                  bottom-margin = 10\mm 
                  inner-margin = 20 \mm 
          outer-margin = 15 \mm 
          binding-offset = 5 \mm 
          first-page-number = #1 
                  blank-after-score-page-force = #10 
               %   page-breaking = #ly:page-turn-breaking 
                  ragged-bottom = ##t 
                  indent = 0\mm 
                  print-page-number = ##t 
                  print-first-page-number = ##f 
                  oddHeaderMarkup = \markup \null 
                  evenHeaderMarkup = \markup \null 
                  oddFooterMarkup = \markup { 
                                                   \fill-line { 
                                                     \null \fontsize #2  \fromproperty #'header:mycustomtext 
                                                        \on-the-fly #print-page-number-check-first 
                                                     \fontsize #2  \fromproperty #'page:page-number-string 
                                                                } % end of fill line 

                                                            } % end of markup block 
                  evenFooterMarkup = \oddFooterMarkup 
                  
                  
                  #(define fonts
    (set-global-fonts
      #:music "ross"
      #:brace "ross"
      #:roman "Avenir Next  Medium"
     #:factor (/ staff-height pt 20)
  ))
           } % end of paper block 


\header {
title = \markup \center-column { \magnify #1.1 "Studie II" \vspace #2 } 
}


  
rigouno = \relative c''{   \stopStaff \override Staff.StaffSymbol.line-positions = #'( 
-40 -39 -38 -37 -36 -35 -34 -33 -32 -31 -30 -29 -28 -27 -26 -25 -24 -23 -22 -21 -20 -19 -18 -17 -16 -15 -14 -13 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1 0  1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 ) 
  \startStaff 	
  
   \hideNotes
  \cadenzaOn 
    \once \override TextScript.extra-offset = #'(-1 . 25.5) 
  	c8-\markup {   \override #'(thickness . 2.5)
   \box \pad-to-box #'(0 . 25.4) #'(5.5 . 15) ""}
  s s s
  
c  \once \override TextScript.extra-offset = #'(-3.5 . 31) 
  	c8-\markup { %\with-color #green 
				 \override #'(thickness . 2.5)
   \box \pad-to-box #'(0 . 9.9) #'(5.5 . 9.7) ""} 
   c c  c 
   \once \override TextScript.extra-offset = #'(-7.4 . 22.5) 
  	c8-\markup { %\with-color #red  
			\override #'(thickness . 2.5)
   \box \pad-to-box #'(0 . 14) #'(5.5 . 8) ""} 
   c c c	
c8 \once \override TextScript.extra-offset = #'(-25.6 . 29) 
  	c8-\markup {%\with-color #cyan 
			 \override #'(thickness . 2.5)
   \box \pad-to-box #'(0 . 18.5) #'(5.5 . 13) ""}  	
c c
\once \override TextScript.extra-offset = #'(-22.3 . 29.7) 
  	c8-\markup {% \with-color #blue  
				\override #'(thickness . 2.5)
   \box \pad-to-box #'(0 . 10.7) #'(5.5 . 9) ""}   	
c c
\once \override TextScript.extra-offset = #'(-20.9 . 23.4) 
  	c8-\markup { %\with-color #magenta 
			 \override #'(thickness . 2.5)
   \box \pad-to-box #'(0 . 10.1) #'(5.5 . 8.5) ""} 
    c  c  c c 
    \once \override TextScript.extra-offset = #'(-11 . 13.2) 
  	c8-\markup { %\with-color #darkcyan
			  \override #'(thickness . 2.5)
   \box \pad-to-box #'(0 . 7) #'(5.5 . 9.7) ""}
   
    \once \override TextScript.extra-offset = #'(-7.5 . 20.6) 
  	c8-\markup { %\with-color #darkmagenta 
			 \override #'(thickness . 2.5)
   \box \pad-to-box #'(0 . 6) #'(5.5 . 10.7) ""}

    \once \override TextScript.extra-offset = #'(-4.2 . 23.2) 
  	c8-\markup {% \with-color #darkgreen
				 \override #'(thickness . 2.5)
   \box \pad-to-box #'(0 . 6) #'(5.5 . 10.3) ""}
   

    }
    
   
  rigodue = \relative c''{  \stopStaff 
  \override Staff.StaffSymbol.line-positions = #'( 1 -1   )
   \overrideProperty Score.NonMusicalPaperColumn.line-break-system-details
            #'((Y-offset . 5)  
             (alignment-distances . (30 20)))
  \startStaff 
  \hideNotes
\override TextScript.extra-offset = #'(0 . 2 )
 c8 c-\markup{\magnify #0.35  \rotate #90 "66,2"} c c \bar"|" \noBreak
c c-\markup{\magnify #0.35  \rotate #90 "51,5"} c  	\bar"||" \noBreak
 \once \override TextScript.extra-offset = #'(-1.5 . 2) 
c8-\markup{\magnify #0.35  \rotate #90 "1,3"} c c-\markup{\magnify #0.35  \rotate #90 "57,3"} c	\bar"|" \noBreak
c8-\markup{\magnify #0.35  \rotate #90 "13,7"} \bar"|"\noBreak 
c c-\markup{\magnify #0.35  \rotate #90 "34,6"}  	 \bar"|" \noBreak
c c-\markup{\magnify #0.35  \rotate #90 "58,6"} c  	\bar"|" \noBreak
c c c-\markup{\magnify #0.35  \rotate #90 "142,6"}  c c	\bar"|" \noBreak
c c-\markup{\magnify #0.35  \rotate #90 "35,0"} 	\bar"|" \noBreak
c c-\markup{\magnify #0.35  \rotate #90 "30,8"}   	\bar"|"\noBreak
c c-\markup{\magnify #0.35  \rotate #90 "27,0"}   	\bar"|" \break

  }  
  
  
  
  
  rigotre = \relative c''{   \stopStaff \override Staff.StaffSymbol.line-positions = #'( 
-19 -15 -14 -13 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16) 
  \startStaff 
  \hideNotes
      \once \override TextScript.extra-offset = #'(-1.2 . 10) 
   c8-\markup {  \override #'(thickness . 2) \draw-line #'(25.5 . -9.4)}
  c, c c 
   \once \override TextScript.extra-offset = #'(9.6 . 8.9 )
   c-\markup {  \override #'(thickness . 2) \draw-line #'(-8 . -2.3)} c c  	
   
   c8 c \once \override TextScript.extra-offset = #'(-7.8 . 5.2 )
 c-\markup { \override #'(thickness . 2)
   \box \pad-to-box #'(0 . 13.5) #'(0 . 4) ""} c	
c8 	
\once \override TextScript.extra-offset = #'(-0.8 . 12.8 )
c -\markup { \override #'(thickness . 2) \draw-line #'(-19 . -7)} 
\once \override TextScript.extra-offset = #'(-4.1 . 7.5 )
c-\markup {   \override #'(thickness . 2) \draw-line #'(0 . 6.8)}  	
c

\once \override TextScript.extra-offset = #'(-2.2 . 12.3 )
c-\markup { %\with-color #darkblue 
		\override #'(thickness . 2) \draw-line #'(-14 . 4.5)}   

\once \override TextScript.extra-offset = #'(-5.7 . 3 )
c-\markup {  %\with-color #red 
		 \override #'(thickness . 2) \draw-line #'(11 . 2.4)} 
\once \override TextScript.extra-offset = #'(1.2 . 5.2 )
c-\markup {   \override #'(thickness . 2) \draw-line #'(0 . 2.4)}  


c
\once \override TextScript.extra-offset = #'(10 . 10 )
c-\markup { % \with-color #red 
			\override #'(thickness . 2) \draw-line #'(7.5 . -4.5)}

 \once \override TextScript.extra-offset = #'(14.2 . 4.7 )
c-\markup { % \with-color #magenta 
		\override #'(thickness . 2) \draw-line #'(7.4 . -2)}  

c  

 \once \override TextScript.extra-offset = #'(14.3 . 10.9 )
c-\markup { %\with-color #blue
				 \override #'(thickness . 2) \draw-line #'(7 . -2)}  



 \once \override TextScript.extra-offset = #'(-4 . 9.3 )
c-\markup { %\with-color #cyan 
			\override #'(thickness . 2) \draw-line #'(0 . 8.6)}    

c
\once \override TextScript.extra-offset = #'(-4 . 4.6 )
c-\markup {  %\with-color #yellow 
			\override #'(thickness . 2) \draw-line #'(0 . 4)}  


 \once \override TextScript.extra-offset = #'(-0.6 . 2.7 )
c-\markup {  \override #'(thickness . 2) \draw-line #'(0 . 2)}  
 



c
    }
    
    \score {
    
    \new StaffGroup <<
\new Staff \with{  \hide BarLine } { 
       \set Staff.instrumentName = \markup { 
       \override-lines #'(baseline-skip . 2.45) {
       \column {\magnify #0.3 \center-align{ "17200 Hz"
                 \line { 12500 } 
                 \line { 9060 } 
                 \line { 6570 } 
                 \line { 4760 } 
                 \line { 3450 } 
                 \line { 2500 } 
                 \line { 1810 } 
                 \line { 1310 } 
                  \line { 952 } 
                   \line { 690 } 
                    \line { 500 } 
                     \line { 362 } 
                      \line { 263 } 
                       \line { 190} 
                        \line { 138} 
                         \line { 100 } 
                        
                 }
                }
               }
              }	{\rigouno}
          }
          
          
\new Staff \with {
}
  { 
       \set Staff.instrumentName = \markup {
       \magnify #0.3 \center-align "76,2 cm = 1 sec." }
       
       				      {\rigodue}       	} 

          
        
\new Staff \with{  \hide BarLine } { 
       \set Staff.instrumentName = \markup { 
       \override-lines #'(baseline-skip . 2.1) {
       \column {\magnify #0.3 \center-align{ "0 dB "
           
                 \line { -  5 } 
                 \line { - 10 } 
                 \line { - 15 } 
                 \line { -  20 } 
                 \line { -  25 } 
                 \line { -  30 } 
                 \line { -  40 } 
               
                        
                 }
                }
               }
              }	{\rigotre}
          }
          
 >>   
 
 
 
 
 
 
 		\layout {
 			\context { \Score
			 \omit Staff.Clef
       			 \omit Staff.TimeSignature
			 \hide SpanBar 
			 proportionalNotationDuration = #(ly:make-moment 1/20)
   
       				 }     
				 
	
				 
				  
			}

}