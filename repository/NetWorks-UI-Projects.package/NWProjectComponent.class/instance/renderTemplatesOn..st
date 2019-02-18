rendering
renderTemplatesOn: canvas
  canvas
    tbsRow: [ 
      canvas tbsColumn
        smallSize: 12;
        with: [ 
              canvas heading
                level2;
                with: [ canvas text: 'Completion Certificates' ] ].
      canvas tbsColumn
        smallSize: 6;
        with: [ 
              canvas tbsButton
                callback: [  ];
                with: 'Generate Certificate 1' ] ].
  canvas
    tbsRow: [ 
      canvas tbsColumn
        smallSize: 12;
        with: [ 
              canvas heading
                level2;
                with: [ canvas text: 'Variation Templates' ] ].
      canvas tbsColumn
        smallSize: 6;
        with: [ 
              canvas tbsButton
                callback: [  ];
                with: 'Generate Template 1' ].
      canvas tbsColumn
        smallSize: 6;
        with: [ 
              canvas tbsButton
                callback: [  ];
                with: 'Generate Template 2' ] ].
  canvas
    tbsRow: [ 
      canvas tbsColumn
        smallSize: 12;
        with: [ 
              canvas heading
                level2;
                with: [ canvas text: 'Payment Claim' ] ].
      canvas tbsColumn
        smallSize: 6;
        with: [ 
              canvas tbsButton
                callback: [  ];
                with: 'Generate Payment Claim' ] ].
  canvas
    tbsRow: [ 
      canvas tbsColumn
        smallSize: 12;
        with: [ 
              canvas heading
                level2;
                with: [ canvas text: 'Subcontractor' ] ].
      canvas tbsColumn
        smallSize: 6;
        with: [ 
              canvas tbsButton
                callback: [  ];
                with: 'Generate Subcontractor Declaration' ].
      canvas tbsColumn
        smallSize: 6;
        with: [ 
              canvas tbsButton
                callback: [  ];
                with: 'Generate Subcontractor Stateement' ] ]