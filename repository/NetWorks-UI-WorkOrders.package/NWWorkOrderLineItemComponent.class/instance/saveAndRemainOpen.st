actions
saveAndRemainOpen
  self memento hasChanged
    ifTrue: [ 
      self variationConfirmedOrAbsent
        ifFalse: [ ^ self ] ].
  super saveAndRemainOpen