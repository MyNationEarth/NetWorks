rendering
renderExportOn: canvas
  canvas
    tbsRow: [ 
      canvas tbsColumn
        mediumSize: 3;
        smallSize: 6;
        extraSmallSize: 12;
        with: [ 
              (self userHasRoleNamed: 'projectTabJobs')
                ifTrue: [ 
                  canvas tbsButton
                    beLabeled;
                    beSubmit;
                    bePrimary;
                    callback: [ self respondWithProjectJobsSummarySpreadsheet ];
                    with: [ 
                          canvas
                            tbsButtonLabel: [ 
                              (canvas tag: 'i')
                                fontAwesome;
                                fontAwesomeFileIcon ].
                          canvas text: 'Export Job Summary Spreadsheet' ] ] ] ]