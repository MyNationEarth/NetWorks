testing
isFieldComplete
  ^ lineItems allSatisfy: [ :lineItem | lineItem fieldComplete ]