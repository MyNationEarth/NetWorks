Accessing
contractorTitle
  ^ self contractor ifNotNil: [ :value | value title ] ifNil: [ '' ]