Accessing
lineItemsAwaitingApproval
  "Answer the line items that are field complete but not yet approved for invoice"

  ^ self lineItems
    select: [ :lineItem | lineItem approvedForInvoice not and: [ lineItem fieldComplete ] ]