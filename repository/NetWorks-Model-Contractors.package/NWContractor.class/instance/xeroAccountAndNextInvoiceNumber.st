utilities
xeroAccountAndNextInvoiceNumber
  ^ String
    streamContents: [ :str | 
      (xeroAccountNumber notNil and: [ xeroAccountNumber notEmpty ])
        ifTrue: [ 
          str
            nextPutAll: xeroAccountNumber;
            nextPut: $- ].
      str nextPutAll: (xeroNextInvoiceNumber printStringLength: 5 padded: true) ]