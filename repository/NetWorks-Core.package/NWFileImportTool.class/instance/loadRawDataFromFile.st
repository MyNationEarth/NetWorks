Importing
loadRawDataFromFile
  | file |
  (GsFile existsOnServer: filePath)
    ifFalse: [ ^ Error signal: '"' , filePath asString , '" does not exist on server.' ].
  file := GsFile openReadOnServer: filePath.
  self rawData: file contentsOfEntireFile.
  file close