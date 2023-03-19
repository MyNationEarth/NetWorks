rendering
renderImportJobsOn: canvas
  "Experimental"

  canvas heading
    level4;
    with: 'Import Jobs (experimental preview)'.
  canvas paragraph: 'The uploaded file must be a text file in CSV format.'.
  canvas tbsColumn
    mediumSize: 3;
    smallSize: 6;
    extraSmallSize: 12;
    with: [ 
          (self userHasRoleNamed: 'exportProjects')
            ifTrue: [ 
              canvas form
                multipart;
                with: [ 
                      canvas fileUpload
                        accept: '.csv';
                        callback: [ :file | 
                              [ 
                              importResponse := ''.
                              self importJobsFromFile: file ]
                                on: Error
                                do: [ :error | 
                                  self halt.
                                  importResponse := error asString ] ].
                      canvas submitButton: 'Import' ] ].
          canvas paragraph: [ canvas strong: importResponse ] ]