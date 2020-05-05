rendering
renderAdminContentOn: canvas
  "Ensure refresh of the defects list"

  self removeComponentAt: #'defects'.
  canvas tbsRow
    with: [ 
      canvas tbsColumn
        smallSize: 12;
        largeSize: 12;
        with: [ canvas render: self defectsComponent ] ]