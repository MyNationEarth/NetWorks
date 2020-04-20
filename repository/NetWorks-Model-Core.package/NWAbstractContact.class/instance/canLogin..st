Updating
canLogin: newValue
  canLogin := newValue.
  canLogin
    ifTrue: [ 
      self
        ensureUserExists;
        enableUserLogin ]
    ifFalse: [ self disableUserLogin ]