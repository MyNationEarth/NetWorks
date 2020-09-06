testing
designApprovedMonth: month year: year
  ^ (self internalDesignApprovedMonth: month year: year)
    or: [ self externalDesignApprovedMonth: month year: year ]