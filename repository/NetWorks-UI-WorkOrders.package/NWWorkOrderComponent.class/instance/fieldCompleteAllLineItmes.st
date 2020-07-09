actions
fieldCompleteAllLineItmes
  "Set all line items to be fieldComplete"

  self model lineItems do: [ :lineItem | lineItem fieldComplete: true ]