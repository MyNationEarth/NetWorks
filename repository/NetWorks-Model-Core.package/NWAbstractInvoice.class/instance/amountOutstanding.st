Accessing
amountOutstanding
  ^ (self amountPayableGstInclusive ifNil: [ 0 ])
    - (self amountPaid ifNil: [ 0 ])