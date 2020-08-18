rendering
renderOfficeOn: canvas
  canvas
    tbsRow: [ 
      canvas tbsColumn
        smallSize: 12;
        with: [ 
              self
                renderDescriptionsWithLabels:
                  #('Investigation Priority' 'Investigation Issued To')
                on: canvas ] ].
  canvas
    tbsRow: [ 
      canvas tbsColumn
        smallSize: 6;
        with: [ self renderDescriptionsWithLabels: #('Event Category') on: canvas ] ].
  canvas
    tbsRow: [ 
      canvas tbsColumn
        smallSize: 12;
        with: [ self renderDescriptionsWithLabels: #('Incident Log Number') on: canvas ] ].
  canvas horizontalRule.
  canvas
    tbsRow: [ 
      canvas tbsColumn
        smallSize: 4;
        with: [ self renderDescriptionsWithLabels: #('Workers Compensation') on: canvas ].
      canvas tbsColumn
        smallSize: 4;
        with: [ 
              self
                renderDescriptionsWithLabels:
                  #('Workers Compensation Notification Date')
                on: canvas ] ].
  canvas
    tbsRow: [ 
      canvas tbsColumn
        smallSize: 4;
        with: [ self renderDescriptionsWithLabels: #('Is Critical') on: canvas ].
      canvas tbsColumn
        smallSize: 4;
        with: [ self renderDescriptionsWithLabels: #('Counselling Required') on: canvas ] ].
  canvas horizontalRule.
  canvas
    tbsRow: [ 
      canvas tbsColumn
        smallSize: 4;
        with: [ self renderDescriptionsWithLabels: #('Reported to Regulator') on: canvas ].
      canvas tbsColumn
        smallSize: 4;
        with: [ self renderDescriptionsWithLabels: #('Reported to Regulator by') on: canvas ].
      canvas tbsColumn
        smallSize: 4;
        with: [ self renderDescriptionsWithLabels: #('Reported to Regulator Date') on: canvas ] ].
  canvas
    tbsRow: [ 
      canvas tbsColumn
        smallSize: 12;
        with: [ self renderDescriptionsWithLabels: #('Reported to Regulator Comment') on: canvas ] ]