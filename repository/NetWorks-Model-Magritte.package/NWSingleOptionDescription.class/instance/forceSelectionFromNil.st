accessing-properties
forceSelectionFromNil
  "Provide a nil option even if required to force a selection from the user"

  ^ self
    propertyAt: #'forceSelectionFromNil'
    ifAbsent: [ self class defaultForceSelectionFromNil ]