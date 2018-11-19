Importing
ensureRawDataIsUsableFormat
  "Make sure raew data is a String and the last character is a Carriage Return"

  (rawData isKindOf: ByteArray)
    ifTrue: [ rawData := String withAll: rawData ].
  rawData last == Character cr
    ifFalse: [ rawData add: Character cr ]