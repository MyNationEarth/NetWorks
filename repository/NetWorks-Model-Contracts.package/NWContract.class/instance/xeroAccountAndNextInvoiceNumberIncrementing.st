descriptions
xeroAccountAndNextInvoiceNumberIncrementing
  | invoiceNumber |
  invoiceNumber := self xeroAccountAndNextInvoiceNumber.
  self incrementXeroNextInvoiceNumber.
  ^ invoiceNumber