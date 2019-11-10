\include "paperA4.ly"
\include "_header.ly"









\include "strumenti/violino.ly"
\include "strumenti/viola.ly"
\include "strumenti/cello.ly"
\include "strumenti/piano.ly"





\score {
  <<
    

   \new StaffGroup = "StaffGroup_quartet"<<
     
        \new Staff = "Staff_violinI" \with { instrumentName = #"Violino" 
        							shortInstrumentName = #"V.no"}
        \violinMusic

      
      \new Staff = "Staff_viola" \with { 
      								instrumentName = #"Viola" 
								shortInstrumentName = #"V.la"}
      \violaMusic

      \new Staff = "Staff_cello" \with { 
      								instrumentName = #"Violoncello" 
								shortInstrumentName = #"Cello"}
      \celloMusic
      
        >>

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