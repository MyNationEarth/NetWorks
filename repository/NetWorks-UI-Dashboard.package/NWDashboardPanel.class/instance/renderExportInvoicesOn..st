rendering
renderExportInvoicesOn: canvas
  canvas tbsColumn
    mediumSize: 3;
    smallSize: 6;
    extraSmallSize: 12;
    with: [ 
          (self userHasRoleNamed: 'Contractor Exporter')
            ifTrue: [ 
              canvas form
                with: [ 
                  canvas tbsButton
                    beLabeled;
                    beSubmit;
                    bePrimary;
                    callback: [ self respondWithContractorInvoicesSpreadsheet ];
                    with: [ 
                          canvas
                            tbsButtonLabel: [ 
                              (canvas tag: 'i')
                                fontAwesome;
                                fontAwesomeFileIcon ].
                          canvas text: 'Export Invoices Spreadsheet' ] ] ] ]