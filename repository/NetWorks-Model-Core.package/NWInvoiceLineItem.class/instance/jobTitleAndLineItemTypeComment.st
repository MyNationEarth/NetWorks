accessing
jobTitleAndLineItemTypeComment
  ^ String
    streamContents: [ :stream | 
      (self referencedLineItem isKindOf: NWJobLineItem)
        ifTrue: [ stream nextPutAll: self referencedLineItem job title ]
        ifFalse: [ stream nextPutAll: self referencedLineItem jobLineItem job title ].
      stream
        nextPutAll: ' | ';
        nextPutAll: self lineItemTypeComment ]