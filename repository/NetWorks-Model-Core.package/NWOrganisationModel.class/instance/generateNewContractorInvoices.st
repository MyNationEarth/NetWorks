invoicing
generateNewContractorInvoices
  | invoiceReadyWorkOrders invoiceReadyProjects |
  "Create contractor invoices based on work order line items that have been approved for invoice"
  invoiceReadyProjects := ((invoiceReadyWorkOrders := self workOrders
    select: [ :workOrder | workOrder hasLineItemsReadyForInvoice ])
    collect: [ :workOrder | workOrder project ]) asSet