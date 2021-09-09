Accessing
workOrderLineItems
  "Answer the collection of workOrder lineItmes refering to this jobLineItem"

  | workOrderLineItems |
  workOrderLineItems := OrderedCollection new.
  self job workOrders
    do: [ :workOrder | 
      (workOrder lineItems
        select: [ :workOrderLineItem | workOrderLineItem jobLineItem == self ])
        ifNotEmpty: [ :lineItems | workOrderLineItems addAll: lineItems ] ].
  ^ workOrderLineItems