rendering
renderBasicsDetailsOn: canvas
  canvas
    tbsRow: [ 
      canvas tbsColumn
        smallSize: 12;
        with: [ self renderDescriptionsWithLabels: #('Contract') on: canvas ] ].
  canvas
    tbsRow: [ 
      canvas tbsColumn
        smallSize: 6;
        with: [ self renderDescriptionsWithLabels: #('Project Name') on: canvas ].
      canvas tbsColumn
        smallSize: 6;
        with: [ self renderDescriptionsWithLabels: #('EFSCD Date') on: canvas ] ]