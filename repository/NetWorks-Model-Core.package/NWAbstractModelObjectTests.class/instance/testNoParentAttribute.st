tests
testNoParentAttribute
  | object |
  object := NWAbstractModelObject new.
  self should: [ object parent ] raise: Error