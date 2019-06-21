Accessing
djcCost
  ^ self contractorInvoices isEmpty
    ifTrue: [ djcCost ]
    ifFalse: [ 
      self contractorInvoices
        inject: 0
        into: [ :total :contractorInvoice | total + (contractorInvoice amountPayable ifNil: [ 0 ]) ] ]