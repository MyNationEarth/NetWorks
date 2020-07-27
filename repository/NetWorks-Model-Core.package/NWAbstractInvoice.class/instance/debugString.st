printing
debugString
  ^ String
    streamContents: [ :str | 
      str
        nextPutAll: self printString;
        nextPut: $(;
        nextPutAll: self title;
        nextPutAll: ', ';
        nextPutAll: self contractor title;
        nextPutAll: ', ';
        nextPutAll: self project title;
        nextPutAll: ', ';
        nextPutAll:
            (self lineItems collect: [ :lineItem | lineItem referencedLineItem workOrder ])
                asSet size asString;
        nextPutAll: ' Issue:' , self issueDate AustralianDateFormat;
        nextPutAll: ' Due:' , self paymentDueDate AustralianDateFormat;
        nextPutAll: ' WorkOrders, ';
        nextPutAll: self lineItems size asString;
        nextPutAll: ' LineItems';
        nextPut: $) ]