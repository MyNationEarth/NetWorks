Accessing
workOrdersWithLineItemsReadyToExportForInvoicing
  "Answer any Work Orders that have line items that are approved for invoice, but not invoiced yet"

  ^ self workOrders
    select: [ :workOrder | workOrder LineItemsReadyToExportForInvoicing notEmpty ]