tests
testUri
  | object title comment |
  object := NWObjectWithTitleAndComment new.
  title := 'Dummy Title'.
  comment := 'Dummy Comment'.
  object title: title.
  self assert: object uri asString = '/DummyTitle'