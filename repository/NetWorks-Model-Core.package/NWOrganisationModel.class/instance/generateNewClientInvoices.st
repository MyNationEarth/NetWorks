invoicing
generateNewClientInvoices
  "Create client invoices based on job line items where the work oder line items have been approved for invoice."

  | invoiceReadyWorkOrders invoiceReadyProjects invoicesToCreate |
  invoiceReadyWorkOrders := OrderedCollection new.
  invoicesToCreate := OrderedCollection new.
  self projects
    do: [ :project | 
      project jobs
        do: [ :job | 
          (job workOrders
            select: [ :workOrder | workOrder hasLineItemsReadyToInvoiceForClient ])
            ifNotEmpty: [ :workOrders | invoiceReadyWorkOrders addAll: workOrders ] ] ].
  invoiceReadyProjects := (invoiceReadyWorkOrders
    collect: [ :workOrder | workOrder project ]) asSet.	"Generate a new ContractorInvoice for each project that contains all WorkOrderLineItems that are ready to invoice"
  invoiceReadyProjects
    do: [ :project | 
      | projectWorkOrders newInvoice invoiceDate |
      projectWorkOrders := invoiceReadyWorkOrders
        select: [ :workOrder | workOrder project = project ].
      newInvoice := invoicesToCreate
        add:
          (NWClientInvoice new
            title:
                project contract client xeroAccountAndNextInvoiceNumberIncrementing;
            client: project contract client;
            project: project;
            issueDate: (invoiceDate := Date today);
            paymentDueDate: (self dateForEndOfMonthFollowing: invoiceDate);
            yourself).
      projectWorkOrders
        do: [ :workOrder | 
          workOrder lineItemsReadyToInvoiceForClient
            do: [ :workOrderLineItem | 
              | invoiceLineItem |
              newInvoice lineItems
                add:
                  (invoiceLineItem := NWInvoiceLineItem new
                    invoice: newInvoice;
                    referencedLineItem: workOrderLineItem jobLineItem;
                    quantity: workOrderLineItem quantityComplete;
                    unit:
                        workOrderLineItem jobLineItem lineItemType valuePerUnit;
                    yourself).
              workOrderLineItem jobLineItem
                invoiceLineItemAt: workOrder
                put: invoiceLineItem ] ] ].
  invoicesToCreate do: [ :invoice | invoice client invoices add: invoice ].
  ^ invoicesToCreate