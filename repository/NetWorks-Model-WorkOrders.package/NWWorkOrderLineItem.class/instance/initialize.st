initialization
initialize
  super initialize.
  quantity := quantityComplete := 0.
  tests := OrderedCollection new.
  fieldComplete := false.
  approvedForInvoice := false