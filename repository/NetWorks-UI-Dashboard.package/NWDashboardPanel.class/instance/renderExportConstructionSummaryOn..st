rendering
renderExportConstructionSummaryOn: canvas
  canvas tbsColumn
    mediumSize: 3;
    smallSize: 6;
    extraSmallSize: 12;
    with: [ 
          (self userHasRoleNamed: 'exportConstruction')
            ifTrue: [ 
              canvas form
                with: [ 
                  canvas tbsButton
                    beLabeled;
                    beSubmit;
                    bePrimary;
                    callback: [ self respondWithConstructionSpreadsheet ];
                    with: [ 
                          canvas
                            tbsButtonLabel: [ 
                              (canvas tag: 'i')
                                fontAwesome;
                                fontAwesomeFileIcon ].
                          canvas text: 'Export Construction Spreadsheet' ] ] ] ]