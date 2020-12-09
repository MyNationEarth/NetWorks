work order access
myWorkOrders
  "Answer the collection of WorkOrders assigned to myContractor"

  ^ self myContractor workOrdersWithLineItemsNotApproved