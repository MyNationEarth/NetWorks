exporting
exportFile
  "Answer the project export file"

  | descriptionContainer csvWriter fileStream file |
  file := WAFile new.
  fileStream := WriteStream on: (contents := String new).
  descriptionContainer := self reportDescriptionContainer.
  csvWriter := NWCSVWriter on: fileStream.
  descriptionContainer
    do: [ :description | fileStream nextPutAll: description label ]
    separatedBy: [ fileStream nextPut: $, ].
  fileStream nextPut: Character cr.
  descriptionContainer
    do: [ :description | csvWriter addField: description accessor readSelector ].
  csvWriter nextPutAll: self rows.
  ^ contents