accessing-attributes
attributeAt: aDescription
  (self attributes magritteDescription includes: aDescription)
    ifFalse: [ ^ Error signal: 'Attribute does not exist' ].
  ^ attributes readUsing: aDescription