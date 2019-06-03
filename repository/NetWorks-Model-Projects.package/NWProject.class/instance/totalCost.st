Accessing
totalCost
  "^ totalCost"

  "Answer the sum of djcCode and internalDjcCost"

  ^ (self djcCost ifNil: [ 0 ]) + (self internalDjcCost ifNil: [ 0 ])