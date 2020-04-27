rendering
renderBasicsOn: canvas
  canvas
    tbsRow: [ 
      canvas tbsColumn
        smallSize: 6;
        with: [ 
              self renderDescriptionsWithLabels: #('Title' 'Comment') on: canvas.
              (self userHasRoleNamed: 'projectTabJobs')
                ifTrue: [ self renderDescriptionsWithLabels: #('Contractor') on: canvas ] ].
      canvas tbsColumn
        smallSize: 6;
        with: [ 
              self
                renderDescriptionsWithLabels:
                  #('Asset' 'Date Scheduled' 'Duration' 'DateComplete')
                on: canvas ] ].
  self renderLineItemsOn: canvas