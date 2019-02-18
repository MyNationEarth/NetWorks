Accessing
rateTitle
  ^ self rate
    ifNil: [ 'No rate selected and saved.' ]
    ifNotNil: [ 
      String
        streamContents: [ :stream | 
          stream
            nextPutAll: self rate title;
            nextPutAll: ' (';
            nextPutAll: self rate comment;
            nextPutAll: ')' ] ]