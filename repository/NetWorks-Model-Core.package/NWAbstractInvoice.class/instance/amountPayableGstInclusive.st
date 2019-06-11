Accessing
amountPayableGstInclusive
  "^ gstInclusiveValue"

  "Answer the totalRevenue amount * 1.1"

  ^ (self amountPayable ifNil: [ 0 ]) * 1.1