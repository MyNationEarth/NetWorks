rendering
renderAdminContentOn: canvas
  self clientsComponent reset.
  canvas tbsRow
    with: [ 
      canvas tbsColumn
        smallSize: 12;
        largeSize: 12;
        with: [ canvas render: self clientsComponent ] ]