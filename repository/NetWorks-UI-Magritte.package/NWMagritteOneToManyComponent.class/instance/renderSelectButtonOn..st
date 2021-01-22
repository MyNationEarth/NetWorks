rendering
renderSelectButtonOn: html
  NWCurrentOrganisationModel value isReadOnly
    ifFalse: [ 
      html tbsButton
        beLabeled;
        beSubmit;
        bePrimary;
        callback: [ self add ];
        accessKey: 'a';
        with: [ 
              html
                tbsButtonLabel: [ 
                  (html tag: 'i')
                    fontAwesome;
                    fontAwesomePlusIcon ].
              html text: (self labelForSelector: #'add') ] ]