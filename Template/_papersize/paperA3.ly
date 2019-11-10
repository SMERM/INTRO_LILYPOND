#(set-global-staff-size 20)

\paper {
  #(set-paper-size "a3")
  ragged-last-bottom = ##f
  top-margin = 10
  line-width = 180
  left-margin = 15
  bottom-margin = 10
  
 %after-title-space = 50\mm
   %first-page-number = #1 
   
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
     % #:music "NOMEFONTLILYPOND"
     % #:brace "NOMEFONTLILYPOND"
     %#:roman "NOMEFONTTESTO"
     %#:factor (/ staff-height pt 20)
     %))
}
