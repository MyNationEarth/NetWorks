Accessing
invoiceLineItems
  ^ invoiceLineItems ifNil: [ invoiceLineItems := Dictionary new ]