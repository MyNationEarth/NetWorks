Accessing
assignments
  "Answer the list of line work order line items for this job"

  ^ self lineItems
    inject: Set new
    into: [ :result :lineItem | 
      result
        addAll: lineItem assignments;
        yourself ]