5smiths
fixInvoiceReferencesForDeletedInvoices
  | projectsWithBadInvoices jobLineItemsWithBadInvoiceReference |
  "Find any invoice references in jobs where the invoice has been deleted and remove the reference"
  projectsWithBadInvoices := Set new.
  jobLineItemsWithBadInvoiceReference := Set new.
  NetWorks fiveSmiths projects
    do: [ :p | 
      p jobs
        do: [ :j | 
          j lineItems
            do: [ :jli | 
              | problemLineItems |
              problemLineItems := jli invoiceLineItems associations
                select: [ :ili | (p contract client invoices includes: ili value invoice) not ].
              problemLineItems
                ifNotEmpty: [ jobLineItemsWithBadInvoiceReference add: jli ].
              problemLineItems
                do: [ :pli | jli invoiceLineItems removeKey: pli key ] ] ] ].
  jobLineItemsWithBadInvoiceReference