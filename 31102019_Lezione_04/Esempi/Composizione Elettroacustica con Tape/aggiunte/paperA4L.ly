\version "2.19.83"
#(set-global-staff-size 20)


 \paper {           	#(set-paper-size "a4landscape") 
          	two-sided = ##t 
                  top-margin = 10\mm 
                  bottom-margin = 10\mm 
                  inner-margin = 20 \mm 
                  after-title-space = 50\mm
          outer-margin = 15 \mm 
          binding-offset = 5 \mm 
          first-page-number = #1 
                  blank-after-score-page-force = #10 
               %   page-breaking = #ly:page-turn-breaking 
                  ragged-bottom = ##t 
                  indent = 10\mm 
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
                  
                  
    %         #(define fonts
    %(set-global-fonts
     % #:music "ross"
     % #:brace "ross"
     %#:roman "Avenir Next  Medium"
     %#:factor (/ staff-height pt 20)
     %))
           } % end of paper block 