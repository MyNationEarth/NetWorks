accessing-properties
forceSelectionFromNil: aBoolean
  "Provide a nil option even if required to force a selection from the user"

  ^ self propertyAt: #'forceSelectionFromNil' put: aBoolean