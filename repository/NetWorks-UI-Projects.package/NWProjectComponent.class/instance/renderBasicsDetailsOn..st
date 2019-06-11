rendering
renderBasicsDetailsOn: canvas
  canvas
    tbsRow: [ 
      canvas tbsColumn
        smallSize: 6;
        with: [ self renderDescriptionsWithLabels: #('Contract') on: canvas ].
      canvas tbsColumn
        smallSize: 6;
        with: [ self renderDescriptionsWithLabels: #('Status') on: canvas ] ].
  canvas
    tbsRow: [ 
      canvas tbsColumn
        smallSize: 6;
        with: [ self renderDescriptionsWithLabels: #('SOR Rate Card') on: canvas ].
      canvas tbsColumn
        smallSize: 3;
        with: [ self renderDescriptionsWithLabels: #('EFSCD Date') on: canvas ] ].
  canvas
    tbsRow: [ 
      canvas tbsColumn
        smallSize: 6;
        with: [ self renderDescriptionsWithLabels: #('Project Name') on: canvas ].
      canvas tbsColumn
        smallSize: 3;
        with: [ self renderDescriptionsWithLabels: #('Order Number') on: canvas ] ].
  canvas
    tbsRow: [ 
      canvas tbsColumn
        smallSize: 3;
        with: [ self renderDescriptionsWithLabels: #('Project Quote Submitted Date') on: canvas ].
      canvas tbsColumn
        smallSize: 3;
        with: [ self renderDescriptionsWithLabels: #('Project Awarded Date') on: canvas ].
      canvas tbsColumn
        smallSize: 3;
        with: [ self renderDescriptionsWithLabels: #('Customer Required Date') on: canvas ] ]