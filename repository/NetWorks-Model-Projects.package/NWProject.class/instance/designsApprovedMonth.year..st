testing
designsApprovedMonth: month year: year
  | numberOfDesignsApproved |
  numberOfDesignsApproved := 0.
  (self internalDesignApprovedMonth: month year: year)
    ifTrue: [ numberOfDesignsApproved := numberOfDesignsApproved + 1 ].
  (self externalDesignApprovedMonth: month year: year)
    ifTrue: [ numberOfDesignsApproved := numberOfDesignsApproved + 1 ].
  ^ numberOfDesignsApproved