descriptions
xeroAccountAndNextInvoiceNumber
  ^ String
    streamContents: [ :str | 
      (xeroAccountNumber notNil and: [ xeroAccountNumber notEmpty ])
        ifTrue: [ 
          str
            nextPutAll: xeroAccountNumber;
            nextPut: $- ].
      str
        nextPutAll:
          (self xeroNextInvoiceNumber printStringLength: 5 padded: true) ]