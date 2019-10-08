rendering
renderDatesOn: canvas
  canvas
    tbsRow: [ 
      canvas tbsColumn
        smallSize: 3;
        with: [ 
              "self renderDescriptionsWithLabels: #('Project Quote Submitted Date') on: canvas"
               ].
      canvas tbsColumn
        smallSize: 3;
        with: [ self renderDescriptionsWithLabels: #('Project Awarded Date') on: canvas ].
      canvas tbsColumn
        smallSize: 3;
        with: [ self renderDescriptionsWithLabels: #('Project Completion Date') on: canvas ] ].
  canvas
    tbsRow: [ 
      canvas tbsColumn
        smallSize: 3;
        with: [ self renderDescriptionsWithLabels: #('PC Pack Hand Over Date') on: canvas ].
      canvas tbsColumn
        smallSize: 3;
        with: [ self renderDescriptionsWithLabels: #('PC Submitted Date') on: canvas ].
      canvas tbsColumn
        smallSize: 3;
        with: [ self renderDescriptionsWithLabels: #('PC Award Date') on: canvas ].
      canvas tbsColumn
        smallSize: 3;
        with: [ self renderDescriptionsWithLabels: #('PC Submitted -> Award (Days)') on: canvas ] ].
  canvas
    tbsRow: [ 
      canvas tbsColumn
        smallSize: 3;
        with: [ self renderDescriptionsWithLabels: #('Variation Submitted Date') on: canvas ].
      canvas tbsColumn
        smallSize: 3;
        with: [ self renderDescriptionsWithLabels: #('Variation Approved Date') on: canvas ].
      canvas tbsColumn
        smallSize: 3;
        with: [ 
              self
                renderDescriptionsWithLabels:
                  #('Variation Submitted -> Approved (Days)')
                on: canvas ] ]