private
writeQuotedField: object
  | string |
  string := (object isKindOf: Date)
    ifTrue: [ object AustralianDateFormat ]
    ifFalse: [ object asString ].
  writeStream nextPut: $".
  string
    do: [ :each | 
      each == $"
        ifTrue: [ 
          writeStream
            nextPut: $";
            nextPut: $" ]
        ifFalse: [ writeStream nextPut: each ] ].
  writeStream nextPut: $"