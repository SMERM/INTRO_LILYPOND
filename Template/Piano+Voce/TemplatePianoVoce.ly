\include "paperA4.ly"
\include "_header.ly"









\include "strumenti/voce.ly"
\include "strumenti/piano.ly"





\score {
  <<
    

 
     
   \new Staff = "Staff_soprano" \with { instrumentName = #"Soprano" }
     		 \new Voice = "soprano"
    	  	 \voceMusic
		  \new Lyrics \lyricsto "soprano" { \voceLyrics }
  


  	\new PianoStaff \with { instrumentName = #"Piano" 
					shortInstrumentName = #"Pf." % I prefer this one
					%shortInstrumentName = #"P.no"
					}
 	   <<
   	   \new Staff { \pianoRHMusic }
   	   \new Staff { \pianoLHMusic }
   	 >>   
	 
>>
  \layout { 
  				\context { \Score
				\override TimeSignature.font-size = #2
				\numericTimeSignature
						}
				\context {
   				 \GrandStaff
			    \consists Keep_alive_together_engraver
  }
			
		}
}