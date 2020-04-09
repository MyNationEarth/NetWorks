actions
save
  self memento hasChanged
    ifTrue: [ 
      self variationConfirmedOrAbsent
        ifFalse: [ ^ self ] ].
  super save