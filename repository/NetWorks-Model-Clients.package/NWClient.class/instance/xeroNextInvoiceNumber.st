Accessing
xeroNextInvoiceNumber
  ^ xeroNextInvoiceNumber ifNil: [ xeroNextInvoiceNumber := 1 ]