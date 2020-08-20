testing
isWeekend
  "Answer true is the dayOfWeek is Saturday or Sunday"

  ^ date notNil and: [ date dayOfWeek = 1 or: [ date dayOfWeek = 7 ] ]