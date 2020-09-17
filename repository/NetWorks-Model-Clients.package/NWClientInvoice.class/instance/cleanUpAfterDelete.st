magritte hooks
cleanUpAfterDelete
  "Remove myself from the contractor invoices and the project contractorInvoices"

  "(self project notNil and: [ self project contractorInvoices includes: self ])
    ifTrue: [ self project contractorInvoices remove: self ]."

  (self client notNil and: [ self client invoices includes: self ])
    ifTrue: [ self client invoices remove: self ].	"De-reference all the line items so they no longer appear as invoiced. NOTE: This may not be the right way to handle this in the long term"
  self lineItems
    do: [ :lineItem | 
      lineItem referencedLineItem
        ifNotNil: [ :referencedLineItem | referencedLineItem invoiceLineItem: nil ] ]