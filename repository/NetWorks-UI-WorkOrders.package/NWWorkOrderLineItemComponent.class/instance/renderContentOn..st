rendering
renderContentOn: canvas
  canvas
    tbsRow: [ 
      canvas tbsColumn
        smallSize: 6;
        with: [ self renderDescriptionsWithLabels: #('Description' 'Comment') on: canvas ].
      (self userHasRoleNamed: 'projectTabJobs')
        ifTrue: [ 
          canvas tbsColumn
            smallSize: 6;
            with: [ self renderDescriptionsWithLabels: #('Job Line Item') on: canvas ] ] ].
  canvas
    tbsRow: [ 
      canvas tbsColumn
        smallSize: 6;
        with: [ 
              self
                renderDescriptionsWithLabels:
                  #('Design Quantity' 'Completed Quantity')
                on: canvas ].
      canvas tbsColumn
        smallSize: 6;
        with: [ 
              self renderDescriptionsWithLabels: #('Field Complete') on: canvas.
              (self userHasRoleNamed: 'projectTabJobs')
                ifTrue: [ 
                  canvas tbsColumn
                    smallSize: 6;
                    with: [ self renderDescriptionsWithLabels: #('Approved For Invoice') on: canvas ].
                  canvas tbsColumn
                    smallSize: 6;
                    with: [ self renderDescriptionsWithLabels: #('Invoice Number') on: canvas ] ] ] ].
  canvas
    tbsRow: [ 
      canvas tbsColumn
        smallSize: 12;
        with: [ self renderDescriptionsWithLabels: #('Tests') on: canvas ] ]