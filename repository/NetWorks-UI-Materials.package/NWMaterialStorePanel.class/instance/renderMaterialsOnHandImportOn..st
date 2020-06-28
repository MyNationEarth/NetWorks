rendering
renderMaterialsOnHandImportOn: canvas
  canvas heading
    level4;
    with: 'Import Stock on Hand'.
  canvas form
    multipart;
    with: [ 
          canvas select
            list: self organisationModel materialStores;
            selected: importMaterialStore;
            labels: [ :option | option title ];
            callback: [ :value | importMaterialStore := value ].
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
                      self halt.
                      self
                        call:
                          (TBSAlerter dangerOn: 'There was a problem importing the csv file.' , e asString)
                        onAnswer: [  ] ] ].
          canvas submitButton with: 'Import' ]