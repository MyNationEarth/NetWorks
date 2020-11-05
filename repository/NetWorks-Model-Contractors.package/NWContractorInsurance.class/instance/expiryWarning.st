Accessing
expiryWarning
  ^ expiryDate
    ifNil: [ 'NO EXPIRY DATE' ]
    ifNotNil: [ 
      expiryDate < Date today
        ifTrue: [ 'EXPIRED' ]
        ifFalse: [ 'Current' ] ]