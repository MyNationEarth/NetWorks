Accessing
fieldCompletedByUsers
  ^ (lineItems collect: [ :lineItem | lineItem fieldCompletedBy ]) asSet