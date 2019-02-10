rendering
renderProjectLineItemsOn: canvas
  canvas
    tbsRow: [ 
      canvas tbsColumn
        smallSize: 12;
        with: [ self renderDescriptionsWithLabels: #('CSPO Line Items') on: canvas ] ]