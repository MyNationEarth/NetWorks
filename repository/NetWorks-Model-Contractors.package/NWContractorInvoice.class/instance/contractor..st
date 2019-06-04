Updating
contractor: newValue
  contractor
    ifNotNil: [ 
      newValue ~= contractor
        ifTrue: [ 
          (contractor invoices includes: self)
            ifTrue: [ contractor invoices remove: self ].
          (newValue invoices includes: self)
            ifFalse: [ newValue invoices add: self ] ] ].
  contractor := newValue