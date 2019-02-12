magritte-hooks
backReference: anObject
  (anObject isKindOf: NWClient)
    ifTrue: [ self client: anObject ]