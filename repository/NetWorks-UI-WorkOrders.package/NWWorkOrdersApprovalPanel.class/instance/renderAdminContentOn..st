rendering
renderAdminContentOn: canvas
  self workOrderApprovalComponent memento reset.
  self workOrderApprovalComponent reset.
  canvas tbsRow
    with: [ 
      canvas tbsColumn
        smallSize: 12;
        largeSize: 12;
        with: [ canvas render: self workOrderApprovalComponent ] ]