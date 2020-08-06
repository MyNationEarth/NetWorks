accessing
jobTitleAndLineItemTypeComment
  ^ String
    streamContents: [ :stream | 
      stream
        nextPutAll: self referencedLineItem jobLineItem job title;
        nextPutAll: ' | ';
        nextPutAll: self lineItemTypeComment ]