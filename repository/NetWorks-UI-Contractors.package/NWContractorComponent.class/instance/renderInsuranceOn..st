rendering
renderInsuranceOn: canvas
  canvas
    tbsRow: [ 
      canvas tbsColumn
        smallSize: 12;
        with: [ self renderDescriptionsWithLabels: #('Insurances') on: canvas ] ]