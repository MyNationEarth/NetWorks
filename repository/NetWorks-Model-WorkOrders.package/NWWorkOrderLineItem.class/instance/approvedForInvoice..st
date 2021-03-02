Updating
approvedForInvoice: newValue
  approvedForInvoice := newValue.
  newValue
    ifTrue: [ self approvedBy: self session user ]
    ifFalse: [ self approvedBy: nil ]