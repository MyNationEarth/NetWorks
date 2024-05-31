initialization
initialize
  super initialize.
  self initializeLists.
  metaModel := MAAdaptiveModel new.
  rateCards := OrderedCollection new.
  clients := OrderedCollection new.
  contracts := OrderedCollection new.
  contractors := OrderedCollection new.
  projects := OrderedCollection new.
  materials := OrderedCollection new.
  materialStores := OrderedCollection new.
  defects := OrderedCollection new.
  incidentReports := OrderedCollection new.
  self initializeInternalRateCard