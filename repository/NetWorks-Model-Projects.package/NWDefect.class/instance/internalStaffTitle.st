Accessing
internalStaffTitle
  ^ self internalStaff ifNotNil: [ :value | value displayName ] ifNil: [ '' ]