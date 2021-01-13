Accessing
removeInvoiceLineItem: anInvoiceLineItem
  self invoiceLineItem = anInvoiceLineItem
    ifTrue: [ self invoiceLineItem: nil ]
    ifFalse: [ 
      self
        error:
          'An attempt to remove an invoice line item reference for a line item not associated with this line item' ]