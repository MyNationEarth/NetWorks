initialization
initialize
  super initialize.
  cspoLineItems := OrderedCollection new.
  projectLineItems := OrderedCollection new.
  notes := OrderedCollection new.
  contractorInvoices := OrderedCollection new.
  designTimeLogs := OrderedCollection new.
  constructionTimeLogs := OrderedCollection new.
  jobs := OrderedCollection new.
  defects := OrderedCollection new.
  requiresDialBeforeYouDig := false