Accessing
rateExtendedValue
  ^ (lineItemType valuePerUnit ifNil: [ 0 ])
    * (self workOrderLineItemsCompleteQuantity ifNil: [ 0 ]) roundTo: 0.01