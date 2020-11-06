Accessing
rateExtendedValue
  ^ (lineItemType valuePerUnit ifNil: [ 0 ]) * (quantity ifNil: [ 0 ])