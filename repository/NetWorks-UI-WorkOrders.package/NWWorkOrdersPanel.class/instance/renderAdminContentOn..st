rendering
renderAdminContentOn: canvas
  self workOrdersComponent reset.
  canvas tbsRow
    with: [ 
      canvas tbsColumn
        smallSize: 12;
        largeSize: 12;
        with: [ canvas render: self workOrdersComponent ] ]