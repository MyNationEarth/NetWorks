actions
remove: anObject
  | errorMessage |
  errorMessage := 'Are you sure you want to remove '
    , (anObject readUsing: description reference children first) asString , '?'.
  anObject canBeDeleted
    ifFalse: [ errorMessage := anObject canNotBeDeletedErrorMessage , ' ' , errorMessage ].
  self
    call: (TBSConfirmer dangerOn: errorMessage)
    onAnswer: [ :answer | 
      answer
        ifTrue: [ 
          self value: (self value copyWithout: anObject).
          self refresh.
          self memento commit.
          anObject cleanUpAfterDelete ] ]