Accessing
amountPayableGstInclusive
  "^ gstInclusiveValue"

  "Answer the totalRevenue amount * 1.1"

  ^ (self amountPayable ifNil: [ 0 ])
    *
      (self isTaxExempt
        ifTrue: [ 1 ]
        ifFalse: [ 1.1 ])
    roundTo: 0.01