Accessing
userName
  ^ user ifNil: [ '' ] ifNotNil: [ user displayName ]