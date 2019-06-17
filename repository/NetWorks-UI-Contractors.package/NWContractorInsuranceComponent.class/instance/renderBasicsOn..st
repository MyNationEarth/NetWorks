rendering
renderBasicsOn: canvas
  canvas
    tbsRow: [ 
      canvas tbsColumn
        smallSize: 12;
        with: [ self renderDescriptionsWithLabels: #('Policy Type' 'Comment') on: canvas ] ].
  canvas
    tbsRow: [ 
      canvas tbsColumn
        smallSize: 4;
        with: [ self renderDescriptionsWithLabels: #('Provider') on: canvas ].
      canvas tbsColumn
        smallSize: 4;
        with: [ self renderDescriptionsWithLabels: #('Policy Number') on: canvas ].
      canvas tbsColumn
        smallSize: 4;
        with: [ self renderDescriptionsWithLabels: #('Expiry Date') on: canvas ] ].
  canvas
    tbsRow: [ 
      canvas tbsColumn
        smallSize: 12;
        with: [ self renderDescriptionsWithLabels: #('Contact') on: canvas ] ]