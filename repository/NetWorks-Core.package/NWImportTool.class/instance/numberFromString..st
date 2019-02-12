conversion
numberFromString: aString
  ^ aString select: [ :char | char isDigit or: [ char = $. ] ]