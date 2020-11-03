descriptions
fieldCompleteDescription
  <magritteDescription>
  | desc |
  desc := MABooleanDescription new
    accessor: #'fieldComplete';
    label: 'Field Complete';
    default: false;
    priority: 100;
    yourself.
  (self approvedForInvoice or: [ self invoiceLineItem notNil ])
    ifTrue: [ desc beReadonly ].
  ^ desc