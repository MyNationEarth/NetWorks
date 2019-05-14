conversion
dateFromMonthAbbreviationAndYearString: aString
  | monthAbbreviation monthNames monthIndex year date |
  monthNames := {'January'.
  'February'.
  'March'.
  'April'.
  'May'.
  'June'.
  'July'.
  'August'.
  'September'.
  'October'.
  'November'.
  'December'}.
  monthAbbreviation := aString copyFrom: 1 to: 3.
  year := self
    numberFromString: (aString copyFrom: (aString indexOf: $-) to: aString size).
  year < 2000
    ifTrue: [ year := year + 2000 ].
  monthIndex := Date
    indexOfMonthName:
      (monthNames
        detect: [ :monthName | monthName asUppercase startsWith: monthAbbreviation asUppercase ]).
  date := Date year: year month: monthIndex day: 1.
  ^ date