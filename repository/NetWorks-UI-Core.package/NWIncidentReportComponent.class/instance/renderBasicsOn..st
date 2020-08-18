rendering
renderBasicsOn: canvas
  canvas
    tbsRow: [ 
      canvas tbsColumn
        smallSize: 12;
        with: [ self renderDescriptionsWithLabels: #('Brief Summary') on: canvas ] ].
  canvas
    tbsRow: [ 
      canvas tbsColumn
        smallSize: 8;
        with: [ self renderDescriptionsWithLabels: #('Location') on: canvas ].
      canvas tbsColumn
        smallSize: 4;
        with: [ self renderDescriptionsWithLabels: #('Date and Time') on: canvas ] ].
  canvas
    tbsRow: [ 
      canvas tbsColumn
        smallSize: 12;
        with: [ 
              self
                renderDescriptionsWithLabels:
                  #('Incident Description' 'People Involved' 'Cause Comment' 'Damage Comment' 'Actions Taken Comment')
                on: canvas ] ].
  canvas
    tbsRow: [ 
      canvas tbsColumn
        smallSize: 8;
        with: [ self renderDescriptionsWithLabels: #('Reported by') on: canvas ].
      canvas tbsColumn
        smallSize: 4;
        with: [ self renderDescriptionsWithLabels: #('Date Reported') on: canvas ] ].
  canvas
    tbsRow: [ 
      canvas tbsColumn
        smallSize: 12;
        with: [ self renderDescriptionsWithLabels: #('Project') on: canvas ] ]