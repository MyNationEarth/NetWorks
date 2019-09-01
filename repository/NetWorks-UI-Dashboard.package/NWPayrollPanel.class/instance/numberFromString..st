utilities
numberFromString: aString
  | numberString |
  (aString isNil or: [ aString isEmpty ])
    ifTrue: [ ^ 0 ].
  numberString := (aString select: [ :char | char isDigit or: [ char = $. ] ])
    ifEmpty: [ '0' ].
  ^ Number fromString: numberString