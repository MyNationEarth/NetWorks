testing
hasLineItemsAwaitingApproval
  "Answer true if there are line items are awaiting approval for invoice"

  self lineItems
    do: [ :lineItem | 
      (lineItem approvedForInvoice not and: [ lineItem fieldComplete ])
        ifTrue: [ ^ true ] ].
  ^ false