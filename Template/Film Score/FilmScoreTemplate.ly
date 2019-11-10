\include "paperA3.ly"
\include "_header.ly"


\include "strumenti/flute.ly"
\include "strumenti/oboe.ly"
\include "strumenti/clarinets.ly"
\include "strumenti/bassoon.ly"

\include "strumenti/horn.ly"
\include "strumenti/trumpet.ly"
\include "strumenti/trombone.ly"
\include "strumenti/tuba.ly"


\include "strumenti/timpani.ly"
\include "strumenti/percussion.ly"

\include "strumenti/_TIMECODE.ly"

\include "strumenti/piano.ly"
\include "strumenti/harp.ly"




\include "strumenti/strings.ly"





\score {
  <<
    \new StaffGroup = "StaffGroup_woodwinds" <<
      \new Staff = "Staff_flute" \with { instrumentName = #"Flute" }
      \fluteMusic
      
   
      \new Staff = "Staff_oboe" \with { \omit TimeSignature
      						instrumentName = #"Oboe" }
      \oboeMusic

      \new Staff = "Staff_clarinet" \with {\omit TimeSignature
        instrumentName = \markup { \concat { "Clarinet in B" \flat } }
      } \transpose bes c' \clarinetMusic
      
     
      \new Staff = "Staff_bassoon" \with {\omit TimeSignature
      				 instrumentName = #"Bassoon" }
      \bassoonMusic
    >>



    \new StaffGroup = "StaffGroup_brass" <<
      \new Staff = "Staff_hornI" \with { instrumentName = #"Horn in F" }
       % \transposition f
        \transpose f c' \hornMusic

      \new Staff = "Staff_trumpet" \with {\omit TimeSignature 
      					 instrumentName = #"Trumpet in  C" }
      \trumpetMusic
      
      
        \new Staff = "Staff_trombone" \with { \clef bass  \omit TimeSignature
        instrumentName = \markup { \concat { "Trombone in B" \flat } }
        }
      \tromboneMusic
      
       \new Staff = "Staff_tuba" \with {\omit TimeSignature 
       					\clef bass
      					 instrumentName = #"Tuba" }
      \tubaMusic
      

    >>
    
   \new StaffGroup = "StaffGroup_percussion" <<
    \new Staff = "Staff_timpani" \with { \clef bass  
         instrumentName = #"Timpani"
        }
      \timpaniMusic
      
    \new RhythmicStaff = "RhythmicStaff_percussion"
    \with {\omit TimeSignature  instrumentName = #"Percussion" }
    
    
      \percussionMusic
      >>
      
      
      
       \new RhythmicStaff = "Timecode"
   						 \with {\omit TimeSignature  
    instrumentName = \markup {  \bold { \smallCaps "Timecode" } }
    }\timecodeMusic
    
    
  
    \new PianoStaff \with { \omit TimeSignature  instrumentName = #"Piano" }
    <<
      \new Staff { \pianoRHMusic }
      \new Staff { \pianoLHMusic }
    >>
    
    
    \new PianoStaff \with { \omit TimeSignature  instrumentName = #"Harp" }
    <<
      \new Staff { \harpRHMusic }
      \new Staff { \harpLHMusic }
    >>
    
    
    
 
    
    
    
    
    
    \new StaffGroup = "StaffGroup_strings" <<
      \new GrandStaff = "GrandStaff_violins" <<
        \new Staff = "Staff_violinI" \with { instrumentName = #"Violin I" }
        \violinIMusic

        \new Staff = "Staff_violinII" \with { \omit TimeSignature
        							instrumentName = #"Violin II" }
        \violinIIMusic
      >>

      \new Staff = "Staff_viola" \with { \omit TimeSignature 
      								instrumentName = #"Viola" }
      \violaMusic

      \new Staff = "Staff_cello" \with { \omit TimeSignature
      								instrumentName = #"Cello" }
      \celloMusic

      \new Staff = "Staff_cbass" \with { instrumentName = #"Double Bass" }
      \cbassMusic
    >>
  >>
  \layout { 
  				\context { \Score
				\override TimeSignature.font-size = #8
				\numericTimeSignature
						}
				\context {
   				 \GrandStaff
			    \consists Keep_alive_together_engraver
  }
			
		}
}