accessing-attributes
changeLog
  "Answer the change history for this object"

  ^ self
    attributeAt: self changeLogDescription
    ifAbsentPut: [ OrderedCollection new ]