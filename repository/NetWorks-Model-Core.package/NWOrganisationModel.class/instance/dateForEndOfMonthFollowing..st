invoicing
dateForEndOfMonthFollowing: aDate
  | tempDate |
  "Answer a date representing the last day of the month following aDate"
  tempDate := aDate addMonths: 1.
  ^ Date
    newDay: (Date daysInMonth: tempDate monthIndex forYear: tempDate year)
    monthNumber: tempDate monthIndex
    year: tempDate year