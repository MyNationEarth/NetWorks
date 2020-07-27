printing
debugString
  ^ String
    streamContents: [ :str | 
      str
        nextPutAll: self printString;
        nextPut: $(;
        nextPutAll: self contractor title;
        nextPut: $) ]