defaults
defaultDisplayProperty
  ^ [ :aDateOrNil | aDateOrNil ifNotNil: [ aDateOrNil AustralianDateAndTimeFormat ] ifNil: [ '' ] ]