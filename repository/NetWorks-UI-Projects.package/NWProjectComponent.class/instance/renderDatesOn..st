rendering
renderDatesOn: canvas
  canvas
    tbsRow: [ 
      canvas tbsColumn
        smallSize: 3;
        with: [ self renderDescriptionsWithLabels: #('PC Pack Hand Over Date') on: canvas ].
      canvas tbsColumn
        smallSize: 3;
        with: [ self renderDescriptionsWithLabels: #('PC Request Submitted Date') on: canvas ].
      canvas tbsColumn
        smallSize: 3;
        with: [ self renderDescriptionsWithLabels: #('PC Due Date') on: canvas ] ].
  canvas
    tbsRow: [ 
      canvas tbsColumn
        smallSize: 3;
        with: [ 
              self
                renderDescriptionsWithLabels:
                  #('Variation Request Submitted Date')
                on: canvas ].
      canvas tbsColumn
        smallSize: 3;
        with: [ self renderDescriptionsWithLabels: #('Variation Approved Date') on: canvas ] ].
  canvas
    tbsRow: [ 
      canvas tbsColumn
        smallSize: 3;
        with: [ self renderDescriptionsWithLabels: #('Payment Date') on: canvas ].
      canvas tbsColumn
        smallSize: 6;
        with: [ self renderDescriptionsWithLabels: #('Month Paid') on: canvas ].
      canvas tbsColumn
        smallSize: 6;
        with: [ self renderDescriptionsWithLabels: #('Month Claimed') on: canvas ] ]