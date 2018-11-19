instance creation
onFileAtPath: aFilePath
  | file importTool |
  (GsFile existsOnServer: aFilePath)
    ifFalse: [ ^ Error signal: '"' , aFilePath asString , '" does not exist on server.' ].
  file := GsFile openRead: aFilePath.
  importTool := self new
    rawData: file contentsOfEntireFile;
    yourself.
  file close.
  ^ importTool