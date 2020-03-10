accessing-defaults
defaultDisplayProperty
  ^ [ :aDateOrNil | aDateOrNil ifNotNil: [ aDateOrNil AustralianDateFormat ] ifNil: [ '' ] ]