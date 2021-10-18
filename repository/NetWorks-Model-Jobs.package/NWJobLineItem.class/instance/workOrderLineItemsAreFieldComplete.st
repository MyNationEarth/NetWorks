Accessing
workOrderLineItemsAreFieldComplete
  "Answer true is all workOrderLineItems are field compelte"

  | woLineItems |
  ^ (woLineItems := self workOrderLineItems) notEmpty
    and: [ woLineItems allSatisfy: [ :workOrderLineItem | workOrderLineItem fieldComplete ] ]