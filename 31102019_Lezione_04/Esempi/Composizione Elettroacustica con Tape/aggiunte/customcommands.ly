speakOn = {
  \override Stem.stencil =
    #(lambda (grob)
       (let* ((x-parent (ly:grob-parent grob X))
              (is-rest? (ly:grob? (ly:grob-object x-parent 'rest))))
         (if is-rest?
             empty-stencil
             (ly:stencil-combine-at-edge
              (ly:stem::print grob)
              Y
              (- (ly:grob-property grob 'direction))
              (grob-interpret-markup grob
                                     (markup #:center-align #:fontsize -1
                                             #:musicglyph "noteheads.s2cross"))
              -2.7))))
}

speakOff = {
  \revert Stem.stencil
  \revert Flag.stencil
}





headPlus = {
\once \override NoteHead.font-size = #2 
\once \override NoteHead.stencil = #ly:text-interface::print
\once \override NoteHead.text = #(markup  #:musicglyph "scripts.sforzato" ) }
