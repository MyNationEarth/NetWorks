Accessing
totalRevenue
  "^ totalRevenue"

  "Answer the sum of CSPO Value and Variation Value"

  ^ (self cspoValue ifNil: [ 0 ]) + (self variationValue ifNil: [ 0 ])