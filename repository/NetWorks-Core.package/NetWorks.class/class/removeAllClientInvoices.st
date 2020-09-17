utilities
removeAllClientInvoices
  NetWorks instance organisationModels values
    do: [ :orgModel | 
      orgModel clients
        do: [ :client | 
          | invoices |
          invoices := client invoices copy.
          invoices do: [ :invoice | invoice cleanUpAfterDelete ].
          client invoices: OrderedCollection new ].	"Clean up all jobLineItems"
      orgModel projects
        do: [ :project | 
          project jobs
            do: [ :job | job lineItems do: [ :jobLineItem | jobLineItem removeAllInvoiceLineItems ] ] ] ]