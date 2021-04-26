Accessing
amountPayable
  ^ (amountPayable ifNil: [ self calculateAmountPayableFromLineItems ])
    roundTo: 0.01