rendering
renderXeroOn: canvas
  canvas
    tbsRow: [ 
      canvas tbsColumn
        smallSize: 6;
        with: [ self renderDescriptionsWithLabels: #('Xero Account Number') on: canvas ].
      canvas tbsColumn
        smallSize: 6;
        with: [ self renderDescriptionsWithLabels: #('Next Invoice Number') on: canvas ] ]