invoicing
removeInvoiceLineItem: anInvoiceLineItem
  ^ self invoiceLineItems
    removeKey: (self invoiceLineItems keyAtValue: anInvoiceLineItem)