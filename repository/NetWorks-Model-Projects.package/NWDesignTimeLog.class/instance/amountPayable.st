utilities
amountPayable
  ^ (user notNil and: [ user payRate notNil and: [ hours notNil ] ])
    ifFalse: [ 0 ]
    ifTrue: [ self paymentForHours: hours ]