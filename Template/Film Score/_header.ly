

\header {
tagline = " "
 
}

  \markuplist {

 \fill-line {
    	\right-align { \fontsize #4 { \override #'(font-name . "Times") " Compositore "}
 		 }	
    	 \center-align { \fontsize #8 { \override #'(font-name . "Times") "    COMPOSIZIONE"}
	 
      	 \vspace#3
	 	}
    }
    
   \fill-line {
   
\concat{    \fontsize #3 { \override #'(font-name . "Andale Mono")  \box{ "REEL xxx "}}
   \fontsize #3 { \override #'(font-name . "Andale Mono") \box{ "PART xxx "}} 
     \fontsize #3 { \override #'(font-name . "Andale Mono") \box{ "SEG xxx "}}
      \fontsize #3 { \override #'(font-name . "Andale Mono")  \box{ "PROD. xxxxx No. xxx "} 
      		}
    	}
}	
     \fill-line { \concat{
    
          \fontsize #3 { \override #'(font-name . "Andale Mono") \box{ "SECTION xxx BARS 100  in 0 MINUTE / 30 SECONDS"  }}  
            \fontsize #3 { \override #'(font-name . "Andale Mono")  \box{ " TOTAL TIME 2'30\" "}}
      		}
      	   }
     
      
   

   
  }