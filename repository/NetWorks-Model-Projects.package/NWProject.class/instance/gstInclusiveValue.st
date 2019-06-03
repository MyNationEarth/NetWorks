Accessing
gstInclusiveValue
  "^ gstInclusiveValue"

  "Answer the totalRevenue amount * 1.1"

  ^ (self totalRevenue ifNil: [ 0 ]) * 1.1