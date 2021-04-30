Accessing
clientInvoices
  | clientInvoices |
  clientInvoices := Set new.
  (self lineItems reject: [ :li | li invoiceLineItems isEmpty ])
    do: [ :li | 
      clientInvoices
        addAll: (li invoiceLineItems values collect: [ :ili | ili invoice ]) ].
  ^ clientInvoices asSortedCollection: [ :a :b | a title < b title ]