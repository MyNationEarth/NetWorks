Accessing
lineItems
  ^ lineItems ifNil: [ lineItems := OrderedCollection new ]