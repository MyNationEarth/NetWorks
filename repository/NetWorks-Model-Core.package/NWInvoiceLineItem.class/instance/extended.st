Accessing
extended
  ^ extended
    ifNil: [ extended := (unit ifNil: [ 0 ]) * (quantity ifNil: [ 0 ]) roundTo: 0.01 ]