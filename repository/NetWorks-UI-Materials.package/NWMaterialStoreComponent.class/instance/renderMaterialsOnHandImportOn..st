rendering
renderMaterialsOnHandImportOn: canvas
  canvas heading
    level4;
    with: 'Import Stock on Hand'.
  canvas form
    multipart;
    with: [ 
          canvas fileUpload
            accept: 'text/csv';
            callback: [ :file | 
                  [ 
                  self importStockOnHandFromFile: file.
                  self
                    call:
                      (TBSAlerter successOn: 'The file was successfully imported')
                    onAnswer: [  ] ]
                    on: Error
                    do: [ :e | 
                      self
                        call:
                          (TBSAlerter dangerOn: 'There was a problem importing the csv file.' , e asString)
                        onAnswer: [  ] ] ].
          canvas submitButton with: 'Import' ]