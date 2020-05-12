Accessing
status
  ^ closedDate isNil
    ifTrue: [ 'Open' ]
    ifFalse: [ 'Closed' ]