rendering
renderGenerateClientInvoicesOn: canvas
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
                callback: [ 
                      | contractorInvoices |
                      contractorInvoices := self organisationModel
                        generateNewClientInvoices ];
                with: [ 
                      canvas
                        tbsButtonLabel: [ 
                          (canvas tag: 'i')
                            fontAwesome;
                            fontAwesomeFileIcon ].
                      canvas text: 'Generate Client Invoices' ] ] ]