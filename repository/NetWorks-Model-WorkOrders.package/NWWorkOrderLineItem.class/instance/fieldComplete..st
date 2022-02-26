Updating
fieldComplete: newValue
  fieldComplete := newValue.
  newValue
    ifTrue: [ 
      self fieldCompleteBy: self session user.
      self fieldCompleteDate: Date today ]
    ifFalse: [ self fieldCompleteBy: nil ]