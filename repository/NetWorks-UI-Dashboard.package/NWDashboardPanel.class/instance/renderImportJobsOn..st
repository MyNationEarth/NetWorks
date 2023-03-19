rendering
renderImportJobsOn: canvas
  "Experimental"

  canvas heading
    level4;
    with: 'Import Jobs (experimental preview)'.
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
                        callback: [ :file | 
                          [ 
                          importResponse := ''.
                          self importJobsFromFile: file ]
                            on: Error
                            do: [ :error | importResponse := error asString ] ].
                      canvas submitButton: 'Import' ] ].
          canvas paragraph: [ canvas strong: importResponse ] ]