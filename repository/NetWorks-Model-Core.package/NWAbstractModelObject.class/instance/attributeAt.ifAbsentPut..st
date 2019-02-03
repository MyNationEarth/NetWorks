accessing-attributes
attributeAt: aDescription ifAbsentPut: absentBlock
  (self attributes values includesKey: aDescription) not
    ifTrue: [ self attributeAt: aDescription put: absentBlock value ].
  ^ self attributeAt: aDescription