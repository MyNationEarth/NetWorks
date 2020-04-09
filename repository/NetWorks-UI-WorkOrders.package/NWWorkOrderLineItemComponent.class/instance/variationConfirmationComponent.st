components
variationConfirmationComponent
  ^ self
    componentAt: #'variationConfirmation'
    ifAbsentPut: [ NWVariationConfirmation new ]