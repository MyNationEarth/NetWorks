accessing
timingFilter
  ^ self session filters
    detect: [ :each | each isKindOf: WATimingToolFilter ]
    ifNone: [ self session addFilter: WATimingToolFilter new ]