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
        with: [ self renderDescriptionsWithLabels: #('Completed Quantity') on: canvas	"'Design Quantity'" ] ].
  canvas
    tbsRow: [ 
      canvas tbsColumn
        smallSize: 6;
        with: [ 
              self renderDescriptionsWithLabels: #('Field Complete') on: canvas.
              self
                renderDescriptionsWithLabels: #('Field Complete By')
                on: canvas ].
      canvas tbsColumn
        smallSize: 6;
        with: [ 
              (self userHasRoleNamed: 'projectTabJobs')
                ifTrue: [ 
                  self renderDescriptionsWithLabels: #('Approved For Invoice') on: canvas.
                  self renderDescriptionsWithLabels: #('Approved By') on: canvas.
                  self renderDescriptionsWithLabels: #('Invoice') on: canvas ] ] ]