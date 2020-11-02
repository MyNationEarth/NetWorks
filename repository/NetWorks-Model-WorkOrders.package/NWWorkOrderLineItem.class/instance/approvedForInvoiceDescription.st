descriptions
approvedForInvoiceDescription
  <magritteDescription>
  | desc |
  desc := MABooleanDescription new
    accessor: #'approvedForInvoice';
    label: 'Approved For Invoice';
    default: false;
    priority: 200;
    yourself.
  self invoiceLineItem notNil
    ifTrue: [ desc beReadonly ].
  ^ desc