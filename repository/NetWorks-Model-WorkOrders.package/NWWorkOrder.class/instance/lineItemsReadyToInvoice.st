Accessing
lineItemsReadyToInvoice
  "Answer the line items that are approved for invoice, but not invoiced yet"

  ^ lineItems
    select: [ :lineItem | lineItem invoiceLineItem isNil and: [ lineItem approvedForInvoice ] ]