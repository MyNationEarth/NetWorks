magritte hooks
backReferenceAfterCommit: aProjectOrClient
  "TODO Make Project invoices generic to handke both client and contractor invoices"

  "(aProjectOrClient isKindOf: NWProject)
    ifTrue: [ self client invoices add: self ]. 
(aProjectOrClient isKindOf: NWClient)
    ifTrue: [ self project contractorInvoices add: self ]"