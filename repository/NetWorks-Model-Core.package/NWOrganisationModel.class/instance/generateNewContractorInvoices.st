invoicing
generateNewContractorInvoices
  | invoiceReadyWorkOrders invoiceReadyProjects invoicesToCreate |
  "Create contractor invoices based on work order line items that have been approved for invoice"
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
      | projectWorkOrders workOrderContractors newInvoice workOrdersOnInvoice |
      projectWorkOrders := invoiceReadyWorkOrders
        select: [ :workOrder | workOrder project = project ].
      workOrderContractors := (projectWorkOrders
        collect: [ :workOrder | workOrder contractor ]) asSet.	"Create 1 invoice per contractor"
      workOrderContractors
        do: [ :workOrderContractor | 
          | invoiceDate |
          workOrdersOnInvoice := projectWorkOrders
            select: [ :workOrder | workOrder contractor = workOrderContractor ].
          newInvoice := invoicesToCreate
            add:
              (NWContractorInvoice new
                title:
                    workOrderContractor xeroAccountAndNextInvoiceNumberIncrementing , ' | '
                        , project title;
                contractor: workOrderContractor;
                project: project;
                issueDate: (invoiceDate := Date today);
                paymentDueDate: (self dateForEndOfMonthFollowing: invoiceDate);
                yourself).
          workOrdersOnInvoice
            do: [ :workOrder | 
              | percentageMultiplier |
              percentageMultiplier := workOrder contractor
                percentageOfRateForContractorInvoices ifNil: [ 0 ].
              percentageMultiplier > 1
                ifTrue: [ percentageMultiplier := percentageMultiplier / 100 ].
              workOrder lineItemsReadyToInvoice
                do: [ :workOrderLineItem | 
                  | rate unitCost |
                  unitCost := workOrderLineItem jobLineItem lineItemType
                    valuePerUnit * percentageMultiplier roundTo: 0.01.	"TODO: lookup the contractor rate"
                  project rateCard contractorRateCard
                    ifNotNil: [ :contractorRateCard | 
                      (contractorRateCard
                        findRateWithTitle:
                          workOrderLineItem jobLineItem lineItemType title)
                        ifNotNil: [ :contractorRate | unitCost := contractorRate valuePerUnit ] ].
                  newInvoice lineItems
                    add:
                      (NWInvoiceLineItem new
                        invoice: newInvoice;
                        referencedLineItem: workOrderLineItem;
                        quantity: workOrderLineItem quantityComplete;
                        unit: unitCost;
                        yourself) ] ] ] ].
  invoicesToCreate
    do: [ :invoice | 
      invoice contractor invoices add: invoice.
      invoice project contractorInvoices add: invoice.
      invoice lineItems
        do: [ :lineItem | lineItem referencedLineItem invoiceLineItem: lineItem ] ].
  ^ invoicesToCreate