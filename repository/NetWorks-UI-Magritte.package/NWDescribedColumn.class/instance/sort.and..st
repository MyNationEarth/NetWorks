private
sort: a and: b
  "Sort nil's to the end of the list"

  ^ (self valueFor: a) isNil | (self valueFor: b) isNil
    ifTrue: [ 
      self isReversed
        ifTrue: [ (self valueFor: a) isNil ]
        ifFalse: [ (self valueFor: b) isNil ] ]
    ifFalse: [ super sort: a and: b ]