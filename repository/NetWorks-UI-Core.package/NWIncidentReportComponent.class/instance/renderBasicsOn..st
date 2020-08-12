rendering
renderBasicsOn: canvas
  canvas
    tbsRow: [ 
      canvas tbsColumn
        smallSize: 12;
        with: [ self renderDescriptionsWithLabels: #('Contact Name' 'Comment') on: canvas ] ].
  canvas
    tbsRow: [ 
      canvas tbsColumn
        smallSize: 12;
        with: [ 
              self
                renderDescriptionsWithLabels:
                  #('Contact Number' 'Email Address')
                on: canvas ] ]