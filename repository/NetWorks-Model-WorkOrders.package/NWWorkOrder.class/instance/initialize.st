initialization
initialize
  super initialize.
  workflow := #'initial'.
  scheduleDuration := 5 days.
  lineItems := OrderedCollection new