accessing-attributes
attributeAt: aDescription ifPresent: presentBlock
  (self attributes values includesKey: aDescription)
    ifTrue: [ presentBlock value: (self attributeAt: aDescription) ]