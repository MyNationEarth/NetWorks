magritte hooks
cleanUpAfterDelete
  "Remove myself from the contractor invoices and the project contractorInvoices"

  (self project notNil and: [ self project contractorInvoices includes: self ])
    ifTrue: [ self project contractorInvoices remove: self ].
  (self contractor notNil and: [ self contractor invoices includes: self ])
    ifTrue: [ self contractor invoices remove: self ]