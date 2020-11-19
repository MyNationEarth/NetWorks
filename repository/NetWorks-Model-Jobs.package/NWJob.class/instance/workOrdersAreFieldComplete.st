Accessing
workOrdersAreFieldComplete
  ^ workOrders allSatisfy: [ :workOrder | workOrder isFieldComplete ]