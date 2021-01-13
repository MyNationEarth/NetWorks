magritte hooks
cleanUpAfterDelete
  super cleanUpAfterDelete.
  referencedLineItem removeInvoiceLineItem: self.
  invoice calculateAmountPayableFromLineItems