Accessing
workOrderLineItemsAreFieldComplete
  "Answer true is all workOrderLineItems are field compelte"

  ^ self workOrderLineItems
    allSatisfy: [ :workOrderLineItem | workOrderLineItem fieldComplete ]