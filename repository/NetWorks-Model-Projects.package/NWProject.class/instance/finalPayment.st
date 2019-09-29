Accessing
finalPayment
  "^ finalPayment"

  "Answer the  “Total Revenue” – “Advance Payment” = “Final Payment”"

  ^ (self totalRevenue ifNil: [ 0 ]) - (self commencementPayment ifNil: [ 0 ])