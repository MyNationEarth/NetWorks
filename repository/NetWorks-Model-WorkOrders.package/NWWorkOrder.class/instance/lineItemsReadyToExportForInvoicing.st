Accessing
lineItemsReadyToExportForInvoicing
  "Answer the line items that are approved for invoice, but not invoiced yet"

  ^ lineItems
    select: [ :lineItem | lineItem invoiceNumber isNil and: [ lineItem approvedForInvoice ] ]