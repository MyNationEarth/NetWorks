rendering
renderFinancialsOn: canvas
  canvas
    tbsRow: [ 
      canvas tbsColumn
        smallSize: 3;
        with: [ self renderDescriptionsWithLabels: #('Variation Value') on: canvas ].
      canvas tbsColumn
        smallSize: 3;
        with: [ self renderDescriptionsWithLabels: #('DJC Cost') on: canvas ].
      canvas tbsColumn
        smallSize: 3;
        with: [ self renderDescriptionsWithLabels: #('Internal DJC Cost') on: canvas ].
      canvas tbsColumn
        smallSize: 3;
        with: [ self renderDescriptionsWithLabels: #('Total Cost') on: canvas ] ].
  canvas
    tbsRow: [ 
      canvas tbsColumn
        smallSize: 3;
        with: [ self renderDescriptionsWithLabels: #('Total Revenue') on: canvas ].
      canvas tbsColumn
        smallSize: 3;
        with: [ self renderDescriptionsWithLabels: #('GST Inclusive') on: canvas ].
      canvas tbsColumn
        smallSize: 3;
        with: [ self renderDescriptionsWithLabels: #('Margin Value') on: canvas ].
      canvas tbsColumn
        smallSize: 3;
        with: [ self renderDescriptionsWithLabels: #('Margin Percentage') on: canvas ] ]