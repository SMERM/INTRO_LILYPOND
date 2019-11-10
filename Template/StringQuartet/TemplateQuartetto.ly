\include "paperA4.ly"
\include "_header.ly"









\include "strumenti/violino.ly"
\include "strumenti/viola.ly"
\include "strumenti/cello.ly"
\include "strumenti/contrabbasso.ly"





\score {
  <<
    

   \new StaffGroup = "StaffGroup_quartet"<<
     
        \new Staff = "Staff_violinI" \with { instrumentName = #"Violino" 
        							shortInstrumentName = #"V.no"}
        \violinMusic

      
      \new Staff = "Staff_viola" \with { \omit TimeSignature 
      								instrumentName = #"Viola" 
								shortInstrumentName = #"V.la"}
      \violaMusic

      \new Staff = "Staff_cello" \with { \omit TimeSignature
      								instrumentName = #"Violoncello" 
								shortInstrumentName = #"Cello"}
      \celloMusic

      \new Staff = "Staff_cbass" \with { instrumentName = #"Contrabbasso" 
      							shortInstrumentName = #"C.basso"}
      \cbassMusic
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