rendering
renderBasicsOn: canvas
  canvas
    tbsRow: [ 
      canvas tbsColumn
        smallSize: 12;
        with: [ 
              self
                renderDescriptionsWithLabels:
                  #('Title' 'Comment' 'Date' 'Complete')
                on: canvas ] ]