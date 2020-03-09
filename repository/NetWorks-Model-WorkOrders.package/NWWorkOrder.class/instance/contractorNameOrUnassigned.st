Accessing
contractorNameOrUnassigned
  ^ contractor ifNil: [ 'Unassigned' ] ifNotNil: [ contractor title ]