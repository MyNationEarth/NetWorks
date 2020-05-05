Accessing
raisedByTitle
  ^ self raisedBy ifNotNil: [ :value | value displayName ] ifNil: [ '' ]