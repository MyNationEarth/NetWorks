invoicing
removeInvoiceLineItem: anInvoiceLineItem
  self invoiceLineItems
    removeKey: (self invoiceLineItems keyAtValue: anInvoiceLineItem)	"^ (self invoiceLineItems includesKey: anInvoiceLineItem)
    ifTrue: [ 
      self invoiceLineItems
        removeKey: (self invoiceLineItems keyAtValue: anInvoiceLineItem) ]
    ifFalse: [ nil ]"