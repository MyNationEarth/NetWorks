magritte hooks
cleanUpAfterDelete
  "Remove myself from the contractor invoices and the project contractorInvoices"

  "(self project notNil and: [ self project contractorInvoices includes: self ])
    ifTrue: [ self project contractorInvoices remove: self ]."

  (self client notNil and: [ self client invoices includes: self ])
    ifTrue: [ self client invoices remove: self ]