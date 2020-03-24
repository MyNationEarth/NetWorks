export file
exportFile
  "Answer the project export file"

  | descriptionContainer csvWriter fileStream file |
  file := WAFile new.
  fileStream := WriteStream on: (contents := String new).
  descriptionContainer := self reportDescriptionContainer.
  csvWriter := NWCSVWriter on: fileStream.
  descriptionContainer
    do: [ :description | csvWriter nextPut: description label ]
    separatedBy: [ csvWriter nextPut: $, ].
  self addFieldsToWriter: csvWriter.
  csvWriter nextPutAll: self projects.
  ^ contents