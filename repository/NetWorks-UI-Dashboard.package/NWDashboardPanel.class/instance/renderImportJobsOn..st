rendering
renderImportJobsOn: canvas
  | importResponse |
  importResponse := ''.
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
                with: [ 
                  canvas tbsRow
                    with: [ 
                      canvas
                        form: [ 
                          canvas fileUpload
                            callback: [ :file | 
                              [ self importJobsFromFile: file ]
                                on: Error
                                do: [ :error | importResponse := error asString ] ].
                          canvas submitButton: 'Import' ] ] ] ].
          canvas paragraph: importResponse ]