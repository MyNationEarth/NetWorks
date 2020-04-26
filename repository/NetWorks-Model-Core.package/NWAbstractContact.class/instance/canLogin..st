Updating
canLogin: newValue
  canLogin := newValue.
  canLogin
    ifNotNil: [ 
      canLogin
        ifTrue: [ 
          self
            ensureUserExists;
            enableUserLogin ]
        ifFalse: [ self disableUserLogin ] ]