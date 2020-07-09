actions
approveFieldCompleteAllLineItmes
  "Set all line items to be fieldComplete"

  (self model lineItems
    select: [ :lineItem | lineItem fieldComplete notNil and: [ lineItem fieldComplete ] ])
    do: [ :lineItem | lineItem approvedForInvoice: true ]