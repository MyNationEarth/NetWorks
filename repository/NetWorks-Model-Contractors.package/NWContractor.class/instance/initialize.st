initialization
initialize
  super initialize.
  contacts := OrderedCollection new.
  invoices := OrderedCollection new.
  insurances := OrderedCollection new.
  subContractors := OrderedCollection new.
  xeroNextInvoiceNumber := 1