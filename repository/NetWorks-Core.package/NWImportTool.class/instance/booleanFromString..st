conversion
booleanFromString: aString
  (aString isNil or: [ aString isEmpty ])
    ifTrue: [ ^ false ].
  (#('true' 'yes' 'y' 'x') includes: aString trimBoth asLowercase)
    ifTrue: [ ^ true ].
  ^ false