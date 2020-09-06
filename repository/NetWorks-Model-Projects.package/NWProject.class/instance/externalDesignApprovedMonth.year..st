testing
externalDesignApprovedMonth: month year: year
  ^ self designDDDApprovedDate notNil
    and: [ 
      self designDDDApprovedDate year = year
        and: [ self designDDDApprovedDate monthIndex = month ] ]