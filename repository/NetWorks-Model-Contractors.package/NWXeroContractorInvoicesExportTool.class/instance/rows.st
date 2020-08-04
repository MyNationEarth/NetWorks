export file
rows
  ^ self organisationModel contractorInvoicesForExport
    inject: OrderedCollection new
    into: [ :rows :invoice | 
      rows
        addAll: invoice lineItems;
        yourself ]