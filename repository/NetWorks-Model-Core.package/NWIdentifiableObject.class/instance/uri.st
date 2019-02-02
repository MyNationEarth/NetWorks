accessing
uri
  ^ self attributeAt: self uriDescription ifAbsentPut: [ self generateUri ]