export file
exportFile
  "Answer the project export file"

  | csvWriter fileStream file |
  file := WAFile new.
  fileStream := WriteStream on: (contents := String new).
  csvWriter := NWCSVWriter on: fileStream.
  csvWriter nextPut: self headerRow.
  self addFieldsToWriter: csvWriter.
  csvWriter nextPutAll: self projects.
  ^ contents