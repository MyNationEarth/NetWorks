private
prepareOptions: aCollection
  ^ (self isRequired and: [ self isForceSelectionFromNil not ])
    ifTrue: [ super prepareOptions: aCollection ]
    ifFalse: [ (Array with: nil) , (super prepareOptions: aCollection) ]