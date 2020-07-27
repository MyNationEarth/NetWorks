initialization
initialize
  super initialize.
  contacts := OrderedCollection new.
  invoices := OrderedCollection new.
  insurances := OrderedCollection new.
  agreements := OrderedCollection new.
  subContractors := OrderedCollection new.
  xeroNextInvoiceNumber := 1.
  percentageOfRateForContractorInvoices := 0