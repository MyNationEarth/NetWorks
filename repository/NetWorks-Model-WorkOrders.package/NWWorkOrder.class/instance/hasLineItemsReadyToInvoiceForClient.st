testing
hasLineItemsReadyToInvoiceForClient
  "Answer true if there are line items that are approved for invoice, but have no invoice line item asssociated with them"

  self lineItems
    do: [ :lineItem | 
      (lineItem approvedForInvoice and: [ lineItem clientInvoiceLineItem isNil ])
        ifTrue: [ ^ true ] ].
  ^ false