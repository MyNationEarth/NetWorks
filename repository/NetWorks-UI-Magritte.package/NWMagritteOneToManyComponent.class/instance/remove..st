actions
remove: anObject
  anObject canBeDeleted
    ifFalse: [ 
      (self
        confirmError:
          anObject canNotBeDeletedErrorMessage , ' Do you really want to remove it?')
        ifFalse: [ ^ self ] ].
  self
    show:
      (TBSConfirmer
        dangerOn:
          'Are you sure you want to remove '
            ,
              (anObject readUsing: description reference children first) asString
            , '?')
    onAnswer: [ :answer | 
      answer
        ifTrue: [ 
          self value: (self value copyWithout: anObject).
          self refresh.
          self memento commit.
          anObject cleanUpAfterDelete ] ]