Accessing
workOrderLineItems
  "Answer the collection of workOrder lineItmes refering to this jobLineItem"

  | workOrderLineItems |
  workOrderLineItems := OrderedCollection new.
  self job workOrders
    do: [ :workOrder | 
      (workOrder lineItems
        detect: [ :workOrderLineItem | workOrderLineItem jobLineItem == self ]
        ifNone: [ nil ])
        ifNotNil: [ :lineItems | workOrderLineItems add: lineItems ] ].
  ^ workOrderLineItems