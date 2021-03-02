Updating
fieldComplete: newValue
  fieldComplete := newValue.
  newValue
    ifTrue: [ self fieldCompleteBy: self session user ]
    ifFalse: [ self fieldCompleteBy: nil ]