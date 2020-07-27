invoicing
contractorInvoicesForExport
  | contractorInvoices |
  contractorInvoices := OrderedCollection new.
  self contractors
    do: [ :contractor | 
      contractorInvoices
        addAll:
          (contractor invoices select: [ :invoice | invoice xeroExportDate isNil ]) ].
  ^ contractorInvoices