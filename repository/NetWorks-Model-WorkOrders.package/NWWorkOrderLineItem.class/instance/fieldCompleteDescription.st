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
  self invoiceLineItem notNil
    ifTrue: [ desc beReadonly ].
  ^ desc