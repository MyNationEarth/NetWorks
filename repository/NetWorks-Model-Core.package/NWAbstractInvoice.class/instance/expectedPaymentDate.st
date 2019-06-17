Accessing
expectedPaymentDate
  ^ issueDate
    ifNotNil: [ 
      | daysInMonth dateNextMonth |
      daysInMonth := (dateNextMonth := issueDate addMonths: 1) daysInMonth.
      Date
        year: dateNextMonth year
        month: dateNextMonth monthIndex
        day: daysInMonth ]