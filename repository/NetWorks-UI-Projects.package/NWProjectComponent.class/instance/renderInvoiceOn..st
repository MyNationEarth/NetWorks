rendering
renderInvoiceOn: canvas
  canvas
    tbsRow: [ 
      canvas tbsColumn
        smallSize: 3;
        with: [ self renderDescriptionsWithLabels: #('Advance Payment') on: canvas ].
      canvas tbsColumn
        smallSize: 3;
        with: [ 
              self
                renderDescriptionsWithLabels:
                  #('Datateks Advance Invoice Number')
                on: canvas ].
      canvas tbsColumn
        smallSize: 3;
        with: [ self renderDescriptionsWithLabels: #('Advance Invoice Date') on: canvas ].
      canvas tbsColumn
        smallSize: 3;
        with: [ 
              self
                renderDescriptionsWithLabels:
                  #('NBN Advance Payment Invoice Number')
                on: canvas ] ].
  canvas
    tbsRow: [ 
      canvas tbsColumn
        smallSize: 3;
        with: [  ].
      canvas tbsColumn
        smallSize: 3;
        with: [ self renderDescriptionsWithLabels: #('Datateks Final Invoice Number') on: canvas ].
      canvas tbsColumn
        smallSize: 3;
        with: [ self renderDescriptionsWithLabels: #('Final Invoice Date') on: canvas ].
      canvas tbsColumn
        smallSize: 3;
        with: [ 
              self
                renderDescriptionsWithLabels:
                  #('NBN Final Payment Invoice Number')
                on: canvas ] ]