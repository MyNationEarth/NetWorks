actions
add
  | newObject |
  self memento commit.
  newObject := self selected new.
  (newObject respondsTo: #'backReference:')
    ifTrue: [ newObject backReference: self memento model ].
  self root
    show: (self validatedFormOn: newObject)
    onAnswer: [ :result | 
      result isNil
        ifFalse: [ 
          result class ~= self selected class
            ifFalse: [ self halt ].
          self
            value: (self value copyWith: result);
            refresh.
          self memento commit.
          (newObject respondsTo: #'backReferenceAfterCommit:')
            ifTrue: [ newObject backReferenceAfterCommit: self memento model ] ] ]