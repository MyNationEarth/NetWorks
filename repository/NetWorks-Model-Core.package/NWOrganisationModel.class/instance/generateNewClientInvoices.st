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
          (job workOrders select: [ :workOrder | workOrder hasLineItemsReadyToInvoice ])
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
          workOrder lineItemsReadyToInvoice
            do: [ :workOrderLineItem | 
              newInvoice lineItems
                add:
                  (NWInvoiceLineItem new
                    invoice: newInvoice;
                    referencedLineItem: workOrderLineItem;
                    quantity: workOrderLineItem quantityComplete;
                    unit:
                        workOrderLineItem jobLineItem lineItemType valuePerUnit
                            *
                              workOrder contractor percentageOfRateForContractorInvoices;
                    yourself) ] ] ].	"invoicesToCreate
    do: [ :invoice | 
      invoice client invoices add: invoice.
      invoice lineItems
        do: [ :lineItem | lineItem referencedLineItem invoiceLineItem: lineItem ] ]."
  ^ invoicesToCreate