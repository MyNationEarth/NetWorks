rendering
renderDesignOn: canvas
  canvas
    tbsRow: [ 
      canvas tbsColumn
        smallSize: 12;
        with: [ self renderDescriptionsWithLabels: #('Notes') on: canvas ] ]