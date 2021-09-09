Accessing
referencedObjectClassLabel
  ^ self referencedObject
    ifNil: [ '' ]
    ifNotNil: [ referencedObject class label ]