testing
designApprovedThisMonth
  ^ self internalDesignApprovedThisMonth
    or: [ self externalDesignApprovedThisMonth ]