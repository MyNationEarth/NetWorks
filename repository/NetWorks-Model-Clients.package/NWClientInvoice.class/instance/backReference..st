magritte hooks
backReference: aProjectOrClient
  "TODO Make Project invoices generic to handle both Client and Contractor Invoices"

  "(aProjectOrClient isKindOf: NWProject)
    ifTrue: [ self project: aProjectOrClient ]."

  (aProjectOrClient isKindOf: NWClient)
    ifTrue: [ self client: aProjectOrClient ]