testing
hasLineItemsReadyToInvoice
  "Answer true if there are work order line items that are approved for invoice, but the job line Item has no invoice line item asssociated with them"

  self lineItems
    do: [ :lineItem | 
      (lineItem invoiceLineItem isNil
        and: [ 
          lineItem workOrderLineItems
            allSatisfy: [ :workOrderLineItem | workOrderLineItem approvedForInvoice ] ])
        ifTrue: [ ^ true ] ].
  ^ false