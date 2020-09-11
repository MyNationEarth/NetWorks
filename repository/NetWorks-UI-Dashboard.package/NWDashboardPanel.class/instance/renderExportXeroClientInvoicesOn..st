rendering
renderExportXeroClientInvoicesOn: canvas
  | numberOfInvoicesToExport |
  numberOfInvoicesToExport := self organisationModel clientInvoicesForExport
    size.
  numberOfInvoicesToExport > 0
    ifTrue: [ 
      canvas tbsColumn
        mediumSize: 3;
        smallSize: 6;
        extraSmallSize: 12;
        with: [ 
              canvas form
                with: [ 
                  canvas tbsButton
                    beLabeled;
                    beSubmit;
                    bePrimary;
                    callback: [ self respondWithXeroClientInvoicesSpreadsheet ];
                    with: [ 
                          canvas
                            tbsButtonLabel: [ 
                              (canvas tag: 'i')
                                fontAwesome;
                                fontAwesomeFileIcon ].
                          canvas
                            text:
                              'Export ' , numberOfInvoicesToExport asString , ' Xero Client Invoices' ] ] ] ]