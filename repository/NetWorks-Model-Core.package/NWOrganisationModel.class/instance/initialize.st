initialization
initialize
  super initialize.
  lists := Dictionary new.
  metaModel := MAAdaptiveModel new.
  rateCards := OrderedCollection new.
  clients := OrderedCollection new.
  contracts := OrderedCollection new.
  contractors := OrderedCollection new.
  projects := OrderedCollection new.
  materials := OrderedCollection new.
  materialStores := OrderedCollection new.
  defects := OrderedCollection new