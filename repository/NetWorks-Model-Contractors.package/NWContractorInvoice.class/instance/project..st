Updating
project: newValue
  project
    ifNotNil: [ 
      newValue ~= project
        ifTrue: [ 
          (project contractorInvoices includes: self)
            ifTrue: [ project contractorInvoices remove: self ].
          (newValue contractorInvoices includes: self)
            ifFalse: [ newValue contractorInvoices add: self ] ] ].
  project := newValue