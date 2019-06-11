rendering
renderCSPODetailsOn: canvas
  canvas
    tbsRow: [ 
      canvas tbsColumn
        smallSize: 6;
        with: [ self renderDescriptionsWithLabels: #('CSPO Value') on: canvas ] ]