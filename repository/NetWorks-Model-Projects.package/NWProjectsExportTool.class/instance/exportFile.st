export file
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
  csvWriter
    addField:
      (descriptionContainer
        inject: OrderedCollection new
        into: [ :result :desc | 
          result
            add: desc accessor readSelector;
            yourself ]).
  csvWriter nextPutAll: self projects.
  ^ contents