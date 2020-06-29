rendering
renderInsuranceOn: canvas
  canvas
    tbsRow: [ 
      canvas tbsColumn
        smallSize: 12;
        with: [ self renderDescriptionsWithLabels: #('Insurances') on: canvas ] ].
  canvas
    tbsRow: [ 
      canvas tbsColumn
        smallSize: 12;
        with: [ canvas render: self insurancesComponent ] ]