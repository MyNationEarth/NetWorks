accessing-attributes
attributeAt: aDescription ifAbsentPut: absentBlock
  (self attributes values includesKey: aDescription)
    ifTrue: [ ^ self attributeAt: aDescription ].
  self attributeAt: aDescription put: absentBlock value