Accessing
invoiceTitle
  ^ invoiceLineItem ifNotNil: [ invoiceLineItem invoice title ]