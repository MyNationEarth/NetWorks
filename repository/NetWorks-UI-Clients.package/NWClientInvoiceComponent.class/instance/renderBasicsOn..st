rendering
renderBasicsOn: canvas
  canvas
    tbsRow: [ 
      canvas tbsColumn
        smallSize: 12;
        with: [ self renderDescriptionsWithLabels: #('Project') on: canvas ] ].
  canvas
    tbsRow: [ 
      canvas tbsColumn
        smallSize: 12;
        with: [ self renderDescriptionsWithLabels: #('Contractor') on: canvas ] ].
  canvas
    tbsRow: [ 
      canvas tbsColumn
        smallSize: 4;
        with: [ self renderDescriptionsWithLabels: #('Invoice Number') on: canvas ].
      canvas tbsColumn
        smallSize: 4;
        with: [ self renderDescriptionsWithLabels: #('Issue Date') on: canvas ].
      canvas tbsColumn
        smallSize: 4;
        with: [ self renderDescriptionsWithLabels: #('Payment Made Date') on: canvas ] ].
  canvas
    tbsRow: [ 
      canvas tbsColumn
        smallSize: 4;
        with: [ self renderDescriptionsWithLabels: #('Amount Payable ex GST') on: canvas ].
      canvas tbsColumn
        smallSize: 4;
        with: [ self renderDescriptionsWithLabels: #('GST Exempt') on: canvas ].
      canvas tbsColumn
        smallSize: 4;
        with: [ self renderDescriptionsWithLabels: #('Amount Paid') on: canvas ] ].
  canvas
    tbsRow: [ 
      canvas tbsColumn
        smallSize: 4;
        with: [ self renderDescriptionsWithLabels: #('Amount Payable inc GST') on: canvas ] ].
  canvas
    tbsRow: [ 
      canvas tbsColumn
        smallSize: 12;
        with: [ self renderDescriptionsWithLabels: #('Comment') on: canvas ] ]