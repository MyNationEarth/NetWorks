Accessing
assignedLineItems
  "Answer the list of line work order line items for this job"

  ^ (self assignments
    collect: [ :workOrderLineItem | workOrderLineItem jobLineItem ]) asSet