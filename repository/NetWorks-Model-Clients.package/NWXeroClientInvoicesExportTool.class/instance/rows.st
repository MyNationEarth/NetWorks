export file
rows
  ^ self organisationModel clientInvoicesForExport
    inject: OrderedCollection new
    into: [ :rows :invoice | 
      rows
        addAll: invoice lineItems;
        yourself ]