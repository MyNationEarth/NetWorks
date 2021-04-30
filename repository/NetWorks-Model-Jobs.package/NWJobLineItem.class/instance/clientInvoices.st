invoicing
clientInvoices
  ^ (Set withAll: (self invoiceLineItems values collect: [ :ili | ili invoice ]))
    asSortedCollection: [ :a :b | a title < b title ]