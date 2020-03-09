Accessing
jobLineItemTypeComment
  ^ self jobLineItem
    ifNil: [ '' ]
    ifNotNil: [ :jobLineItem | jobLineItem lineItemType comment ]