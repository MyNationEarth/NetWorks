conversion
numberFromString: aString
  | numberString |
  numberString := (aString select: [ :char | char isDigit or: [ char = $. ] ])
    ifEmpty: [ '0' ].
  ^ Number fromString: numberString