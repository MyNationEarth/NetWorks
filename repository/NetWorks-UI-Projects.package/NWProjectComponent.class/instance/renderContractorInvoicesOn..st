rendering
renderContractorInvoicesOn: canvas
  canvas
    tbsRow: [ 
      canvas tbsColumn
        smallSize: 12;
        with: [ self renderDescriptionsWithLabels: #('Contractor Invoices') on: canvas ] ]