initialization
initialize
  super initialize.
  id := UUID new.
  invoiceLineItems := Dictionary new.
  quantity := 0