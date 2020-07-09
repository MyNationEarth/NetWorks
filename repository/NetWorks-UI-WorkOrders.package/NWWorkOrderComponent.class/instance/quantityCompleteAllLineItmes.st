actions
quantityCompleteAllLineItmes
  "Set all line items to quantity complete = design quantity"

  self model lineItems
    do: [ :lineItem | lineItem quantityComplete: lineItem quantity ].
  self reset