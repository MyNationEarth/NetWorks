descriptions
quantityCompleteDescription
  <magritteDescription>
  | desc |
  desc := MANumberDescription new
    accessor: #'quantityComplete';
    label: 'Completed Quantity';
    priority: 250;
    default: 0;
    propertyAt: #'icon' put: #'check';
    yourself.
  (self invoiceLineItem notNil or: [ self fieldComplete ])
    ifTrue: [ desc beReadonly ].
  ^ desc