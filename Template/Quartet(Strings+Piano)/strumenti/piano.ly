
%Mano Destra
pianoRHMusic = \relative c' { \key g \major 

				\repeat unfold 2 {g' a b c d e fis g}  
				
				
}



%Mano Sinistra
pianoLHMusic = \relative c { \clef bass \key g \major
					\set Staff.pedalSustainStyle = #'mixed

					\repeat unfold 2 {g\sustainOn a b c\sustainOff\sustainOn d e fis g\sustainOff} 
				
					
 }