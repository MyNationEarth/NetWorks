export file
next: numberOfWeeks dayOfWeek: dayOfWeek
  | returnDates |
  returnDates := OrderedCollection new.
  [ returnDates size = numberOfWeeks ]
    whileFalse: [ 
      | candidateDate |
      candidateDate := returnDates isEmpty
        ifTrue: [ Date today ]
        ifFalse: [ returnDates last copy addDays: 1 ].
      [ candidateDate dayOfWeek = dayOfWeek ]
        whileFalse: [ candidateDate := candidateDate addDays: 1 ].
      returnDates add: candidateDate ].
  ^ returnDates