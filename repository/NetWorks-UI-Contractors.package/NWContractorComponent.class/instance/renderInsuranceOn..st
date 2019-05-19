rendering
renderInsuranceOn: canvas
  canvas
    tbsRow: [ 
      canvas tbsColumn
        smallSize: 6;
        with: [ self renderDescriptionsWithLabels: #('Public Liability Start Date') on: canvas ].
      canvas tbsColumn
        smallSize: 6;
        with: [ self renderDescriptionsWithLabels: #('Public Liability End Date') on: canvas ] ].
  canvas
    tbsRow: [ 
      canvas tbsColumn
        smallSize: 6;
        with: [ self renderDescriptionsWithLabels: #('Public Indemnity Start Date') on: canvas ].
      canvas tbsColumn
        smallSize: 6;
        with: [ self renderDescriptionsWithLabels: #('Public Indemnity End Date') on: canvas ] ].
  canvas
    tbsRow: [ 
      canvas tbsColumn
        smallSize: 6;
        with: [ 
              self
                renderDescriptionsWithLabels:
                  #('Workers Compensation Start Date')
                on: canvas ].
      canvas tbsColumn
        smallSize: 6;
        with: [ self renderDescriptionsWithLabels: #('Workers Compensation End Date') on: canvas ] ]