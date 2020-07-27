utilities
calculateAmountPayableFromLineItems
  ^ amountPayable := (self lineItems
    inject: 0
    into: [ :sum :lineItem | sum + lineItem extended ]) roundTo: 0.01