testing
internalDesignApprovedMonth: month year: year
  ^ self designDDDInternalApprovedDate notNil
    and: [ 
      self designDDDInternalApprovedDate year = year
        and: [ self designDDDInternalApprovedDate monthIndex = month ] ]