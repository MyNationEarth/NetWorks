Accessing
fieldCompletedByUsers
  ^ (lineItems collect: [ :lineItem | lineItem fieldCompleteBy ]) asSet