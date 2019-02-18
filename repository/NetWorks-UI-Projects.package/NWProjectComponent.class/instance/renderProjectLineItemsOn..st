rendering
renderProjectLineItemsOn: canvas
  canvas
    tbsRow: [ 
      canvas tbsColumn
        smallSize: 4;
        with: [ self renderDescriptionsWithLabels: #('CSPO Value') on: canvas ] ].
  canvas
    tbsRow: [ 
      canvas tbsColumn
        smallSize: 12;
        with: [ self renderDescriptionsWithLabels: #('CSPO Line Items') on: canvas ] ]