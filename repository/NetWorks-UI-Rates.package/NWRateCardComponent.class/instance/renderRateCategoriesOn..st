rendering
renderRateCategoriesOn: canvas
  canvas
    tbsRow: [ 
      canvas tbsColumn
        smallSize: 12;
        with: [ self renderDescriptionsWithLabels: #('Rate Categories') on: canvas ] ]