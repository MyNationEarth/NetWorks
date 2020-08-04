delegation
doesNotUnderstand: aMessageDescriptor
  [ 
  aMessageDescriptor arguments
    ifEmpty: [ ^ invoice perform: aMessageDescriptor selector ]
    ifNotEmpty: [ 
      ^ invoice
        perform: aMessageDescriptor selector
        withArguments: aMessageDescriptor arguments ] ]
    on: Error
    do: [ ^ super doesNotUnderstand: aMessageDescriptor ]