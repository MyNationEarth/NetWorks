Accessing
expiryWarning
  ^ expiryDate < Date today
    ifTrue: [ 'EXPIRED' ]
    ifFalse: [ 'Current' ]