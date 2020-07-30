rendering
renderExportOn: canvas
  canvas
    tbsRow: [ 
      canvas tbsColumn
        mediumSize: 3;
        smallSize: 6;
        extraSmallSize: 12;
        with: [ 
              (self userHasRoleNamed: 'exportProjects')
                ifTrue: [ 
                  canvas tbsButton
                    beLabeled;
                    beSubmit;
                    bePrimary;
                    callback: [ self respondWithProjectJobSummarySpreadsheet ];
                    with: [ 
                          canvas
                            tbsButtonLabel: [ 
                              (canvas tag: 'i')
                                fontAwesome;
                                fontAwesomeFileIcon ].
                          canvas text: 'Export Job Summary Spreadsheet' ] ] ] ]