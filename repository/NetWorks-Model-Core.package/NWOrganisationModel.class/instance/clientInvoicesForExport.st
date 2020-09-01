invoicing
clientInvoicesForExport
  | clientInvoices |
  clientInvoices := OrderedCollection new.
  self clients
    do: [ :client | 
      clientInvoices
        addAll:
          (client invoices select: [ :invoice | invoice xeroExportDate isNil ]) ].
  ^ clientInvoices