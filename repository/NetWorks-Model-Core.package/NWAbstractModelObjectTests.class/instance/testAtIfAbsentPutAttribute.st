tests
testAtIfAbsentPutAttribute
  | object |
  object := NWAbstractModelObject new.
  object attributeAt: self stringDescription ifAbsentPut: 'String Test'.
  self assert: (object attributeAt: self stringDescription) = 'String Test'