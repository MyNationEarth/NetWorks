Accessing
lineItemsReadyToInvoiceForClient
  "Answer the line items that are approved for invoice, but not invoiced yet"

  ^ lineItems
    select: [ :lineItem | lineItem approvedForInvoice and: [ lineItem clientInvoiceLineItem isNil ] ]