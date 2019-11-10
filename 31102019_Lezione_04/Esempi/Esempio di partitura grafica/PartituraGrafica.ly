\version "2.19.83"
\include "aggiunte/paperA4L.ly"
\include "aggiunte/customcommands.ly"
%mute = { \once \override NoteHead.style = #'cross}

\header {
title = \markup \center-column {  "Composizione Acusmatica"  } 
}




  
rigouno = \relative c''{   
 
\stopStaff \override Staff.StaffSymbol.line-positions = #'( -30 30 ) 
\startStaff

	\cadenzaOn
  \autoBeamOff
\override TextScript.extra-offset = #'(-1 . 14) 
 s8-\markup {
 \magnify #3.6 
  \draw-circle #2 #0.5 ##f
  \hspace #20
   \magnify #1.6 
  \draw-circle #2 #0 ##t

} 
  \override TextScript.extra-offset = #'(0 . 34) 

s16-\markup {
\override #'(thickness . 5)
  \draw-dashed-line #'(30 . 10)
  \override #'(off . 0.5)
  \override #'(thickness . 5)
  \draw-line #'(35.1 . 0)
}
s4
 \override TextScript.extra-offset = #'(10 . 57) 
s16-\markup
 { \override #'(height . 5)
  \override #'(thickness . 5)
    \draw-squiggle-line #1 #'(30 . 0) ##t}
     \override TextScript.extra-offset = #'(0 . 24) 
     
    s16-\markup
 { \override #'(height . 2)
  \override #'(thickness . 5)
    \draw-squiggle-line #4 #'(60 . 15) ##t}
    
  s4  
     \override TextScript.extra-offset = #'(10 . 30) 
    s16-\markup {
  \filled-box #'(0 . 4) #'(0 . 4) #0
    \hspace #2
  \filled-box #'(0 . 2) #'(-4 . 2) #0.4
    \hspace #14
  \filled-box #'(1 . 8) #'(0 . 7) #0.2 }
 s4
   \override TextScript.extra-offset = #'(35 . 32) 
 s16-\markup {
 \magnify #4.6 
  \triangle  ##t}
 s16-\markup { 
  \hspace #5
  \magnify #3.6 
  \triangle ##f}

    
 s1 \break \bar "||" \noPageBreak
 s1 \break \bar "|." 
     
     
     
     }
    
     
    \score {
    
    
    
    
    
    
  <<
\new Staff \with{ \hide Clef

                              } { 
       \set Staff.instrumentName = \markup { ELETTRONICA }	{\rigouno}
          }
          

          
 >>   
 
 
 		\layout {
		\context {
    \Staff
    \override VerticalAxisGroup.default-staff-staff-spacing =
      #'((basic-distance . 1)
         (minimum-distance . 1)
         (padding . 1))
  }
 			\context { \Score
			\override VerticalAxisGroup.default-staff-staff-spacing.basic-distance = #1
			 \override Stem.details.beamed-lengths = #'(7)
       			 \omit Staff.TimeSignature
			 proportionalNotationDuration = #(ly:make-moment 1/20)
   
       				 }     
				 
		}

}