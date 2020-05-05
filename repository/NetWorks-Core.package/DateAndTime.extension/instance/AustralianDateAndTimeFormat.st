*networks-core
AustralianDateAndTimeFormat
  ^ String
    streamContents: [ :stream | 
      stream
        nextPutAll: self date AustralianDateFormat;
        nextPut: Character space;
        nextPutAll: self time asString ]