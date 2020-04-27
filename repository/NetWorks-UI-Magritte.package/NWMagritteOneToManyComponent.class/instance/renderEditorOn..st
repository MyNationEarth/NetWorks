rendering
renderEditorOn: canvas
  canvas
    tbsRow: [ 
      canvas tbsColumn
        smallSize: 6;
        with: [ self renderSearchOn: canvas ].
      canvas tbsColumn
        smallSize: 6;
        with: [ 
              self magritteDescription isDefinitive
                ifFalse: [ self renderSelectListOn: canvas ] ] ].
  self renderViewerOn: canvas