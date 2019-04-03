conversion
dateFromString: aString
  | date |
  [ 
  date := Date fromString: aString.
  date year < 2000
    ifTrue: [ date := date addYears: 100 ] ]
    on: Error
    do: [ ^ nil ].
  ^ date