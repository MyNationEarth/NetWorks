utilities
xeroAccountAndNextInvoiceNumber
  ^ String
    streamContents: [ :str | 
      (xeroAccountNumber notNil and: [ xeroAccountNumber asString notEmpty ])
        ifTrue: [ 
          str
            nextPutAll: xeroAccountNumber asString;
            nextPut: $- ].
      str
        nextPutAll:
          (self xeroNextInvoiceNumber printStringLength: 5 padded: true) ]