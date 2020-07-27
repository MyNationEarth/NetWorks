Accessing
amountPayable
  ^ amountPayable ifNil: [ self calculateAmountPayableFromLineItems ]