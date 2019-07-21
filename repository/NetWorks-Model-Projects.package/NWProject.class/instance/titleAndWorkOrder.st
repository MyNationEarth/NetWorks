Accessing
titleAndWorkOrder
  ^ String
    streamContents: [ :stream | 
      (orderNumber notNil and: [ orderNumber notEmpty ])
        ifTrue: [ 
          stream
            nextPutAll: orderNumber;
            nextPutAll: ' - ' ].
      stream nextPutAll: title ]