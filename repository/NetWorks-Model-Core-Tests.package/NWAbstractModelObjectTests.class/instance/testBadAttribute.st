tests
testBadAttribute
  | object |
  object := NWAbstractModelObject new.
  self should: [ object attributeAt: self stringDescription ] raise: Error