utilities
paymentRate
  "Answer weekend or weekday rates"

  ^ self isWeekend
    ifFalse: [ #(#(7.6 1) #(2 1.5) #(14.4 2)) ]
    ifTrue: [ #(#(3 1.5) #(21 2)) ]