Updating
djcCost: newValue
  self contractorInvoices isEmpty
    ifTrue: [ djcCost := newValue ]
    ifFalse: [ djcCost := 0 ]