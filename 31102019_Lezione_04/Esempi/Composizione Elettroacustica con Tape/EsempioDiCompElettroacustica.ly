\version "2.19.83"
\include "aggiunte/paperA4L.ly"
\include "aggiunte/customcommands.ly"

\header {
title = \markup \center-column {  "Esempio di Composizione Elettroacustica"  } 
subtitle = \markup \center-column { \italic "per Strumento e Suoni su Supporto" \vspace #2 } 
}




  
rigouno = \relative c''{   
	\cadenzaOn
  \autoBeamOff
\override Rest.transparent = ##t
 <<
  { \stemDown cis8\mp\<  [s8  s4 s4  \once \override NoteHead.style = #'cross 
   				   f8->\ff]  }
\\ 
{s8		s8	s4 s4	\once\override NoteHead.transparent = ##t
					\once\override Stem.length = #13   f8}				   
    >>
   r16  
  
  \override NoteHead.style = #'cross
  \omit TupletNumber
  \teeny {\tuplet 20/1  {c8-.-> bes-.-> a'-.-> c,,-.-> r r r r f'-.-> g,-.->  a'-.-> e-.-> c-.-> d-.-> r r r e-.-> f-.-> fis'-.->}}
   
   \revert NoteHead.style
   
   r16 
   <<
 {  \stemDown \repeat tremolo 8 {dis,64[(\<}  s4 s4 g'8)-.\ffff] }
   \\
   {s8		s4	s4 	\once\override NoteHead.transparent = ##t
					\once\override Stem.length = #15   f8}				   
    >>
  
   r8 
  
   \speakOn
   \omit TupletNumber
 \teeny {\tuplet 26/2  {d,8(\ppp\< [r r r cis c r r r f  r r g r ais c-. cis-. d-. fis-.-> g-.-> b-.-> c-.->) bes-.-> aes-.-> r ]r\ff} } \breathe
 \speakOff 		
 				 \normalsize
 \acciaccatura{e8:64\mp\< [ees8:64 d8:64 c8:64 bes8:64 g8:64 f,8:64 d8:64 cis8:64]}
  
  				 \set tieWaitForNote = ##t
   \repeat tremolo 8 {c64~\>\f   fis64^~} 
   \repeat tremolo 8 { \override NoteHead.style = #'cross  c64  fis64\!\ppp} 
   \revert NoteHead.style 
    \headPlus    c8\sfz  
   < fis'cis' gis>\mp^\markup {
  \center-column {\override #'(thickness . 0.15)
  \line {1.}
    \override #'(size . 0.5) 
      \woodwind-diagram #'flute #'((cc . (oneF two three six))
                                 (lh . (gis))
                                 (rh . (d c))) }
			  	}
    
         
   }
   
   
   
   
  rigodue = \relative c''{  \stopStaff 
\override Staff.StaffSymbol.line-positions = #'( 0.4 0.2 0 -0.2 -0.4 ) 

   \startStaff
 s4^\markup{\bold 0''}  s4 \bar"!" s4^\markup{\bold 5''}  s4\bar"!" 
 s4^\markup{\bold 10''}  s4\bar"!" s4^\markup{\bold 15''} s4\bar"!"  \break \noPageBreak
 s4^\markup{\bold 20''}  s4\bar"!" s4^\markup{\bold 25''}s4\bar"|." 


  }  
  
  
  
  
  
  
  
  
  rigotre = \relative c''{   \stopStaff \override Staff.StaffSymbol.line-positions = #'( -15 15 ) 
    \overrideProperty Score.NonMusicalPaperColumn.line-break-system-details
            #'((Y-offset . 10)  
             (alignment-distances . (12 10)))
  \startStaff 

  
 \override TextScript.extra-offset = #'(44 . 13)
s1-\markup {
  \general-align #X #DOWN {
    \epsfile #Y #10 #"aggiunte/1a.eps" }} 
    
    s1 
    
     \override TextScript.extra-offset = #'(-5 . 13)
s1-\markup {
  \general-align #X #DOWN {
    \epsfile #Y #10 #"aggiunte/2a.eps" }}  
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    \score {
    
    \new StaffGroup <<
\new Staff \with{   } { 
       \set Staff.instrumentName = \markup { Strumento }	{\rigouno}
          }
          
          
\new Staff \with {\omit Staff.Clef } {\rigodue}       	
       		

          
        
\new Staff \with {\omit Staff.Clef \hide BarLine
      \override InstrumentName.self-alignment-X = #RIGHT
      instrumentName = \markup \right-column {
        "Suoni su"
        "Supporto"
      }
      shortInstrumentName = "SsS"
    }{\rigotre}
          
 >>   
 
 
 
 
 
 
 		\layout {
 			\context { \Score
			% \omit Staff.Clef
			 \override Stem.details.beamed-lengths = #'(7)
       			 \omit Staff.TimeSignature
 \override Flag.stencil = #modern-straight-flag			% \hide SpanBar 
			 proportionalNotationDuration = #(ly:make-moment 1/32)
			    %   \override NonMusicalPaperColumn.line-break-permission = ##f
			    \hide SpanBar
    \override Beam.damping = #20
       				 }     
				 
	
				 
				  
			}

}