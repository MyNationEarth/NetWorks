magritte hooks
backReferenceAfterCommit: aProjectOrContractor
  (aProjectOrContractor isKindOf: NWProject)
    ifTrue: [ self contractor invoices add: self ].
  (aProjectOrContractor isKindOf: NWContractor)
    ifTrue: [ self project contractorInvoices add: self ]