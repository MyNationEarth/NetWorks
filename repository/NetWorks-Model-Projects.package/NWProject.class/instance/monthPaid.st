Accessing
monthPaid
  "TODO Remove this field - it's calculated based on the first of the month of the field paymentDate"

  ^ (paymentDate isKindOf: Date)
    ifFalse: [ nil ]
    ifTrue: [ Date newDay: 1 monthNumber: paymentDate monthIndex year: paymentDate year ]