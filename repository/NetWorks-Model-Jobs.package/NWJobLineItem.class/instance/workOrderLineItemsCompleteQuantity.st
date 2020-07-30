Accessing
workOrderLineItemsCompleteQuantity
  "Answer the sum of all workOrderLineItems quantityComplete"

  ^ self workOrderLineItems
    inject: 0
    into: [ :sum :lineItem | sum + lineItem quantityComplete ]