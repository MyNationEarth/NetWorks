Accessing
referencedObjectTitle
  ^ self referencedObject ifNil: [ '' ] ifNotNil: [ referencedObject title ]