rendering
renderAdminContentOn: canvas
  canvas tbsRow
    with: [ 
      canvas tbsColumn
        smallSize: 12;
        largeSize: 12;
        with: [ canvas render: self materialStoreComponent ] ].
  canvas tbsRow
    with: [ 
      canvas tbsColumn
        smallSize: 12;
        with: [ self renderMaterialsOnHandImportOn: canvas ] ]