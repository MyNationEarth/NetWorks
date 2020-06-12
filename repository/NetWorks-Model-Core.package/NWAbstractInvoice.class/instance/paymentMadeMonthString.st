Accessing
paymentMadeMonthString
  ^ paymentMadeDate
    ifNil: [ '' ]
    ifNotNil: [ 
      String
        streamContents: [ :stream | 
          stream
            nextPutAll: paymentMadeDate monthName;
            nextPut: $-;
            nextPutAll: paymentMadeDate year asString ] ]