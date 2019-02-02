tests
testParentAttribute
  | object |
  object := NWAbstractModelObject new.
  object parent: #'DummyParent'.
  self assert: object parent == #'DummyParent'