conversion
dateFromString: aString
  | date |
  [ date := Date readFrom: aString readStream ]
    on: Error
    do: [ ^ nil ].
  ^ date