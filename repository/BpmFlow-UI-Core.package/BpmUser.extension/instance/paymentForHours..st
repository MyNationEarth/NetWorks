*BpmFlow-UI-Core
paymentForHours: numberOfHours
  " 7am - 3:06pm Mon-Fri   
	- total 7.6 hours
	-  Next 2 hours 1.5x rate
	- Next X hours is 2.0x rate"

  | hoursAndRates hoursToPay hoursPaid |
  hoursAndRates := #(#(7.6 1) #(2 1.5) #(24 2)).
  hoursToPay := numberOfHours.
  hoursPaid := 0.
  ^ (hoursAndRates
    inject: 0
    into: [ :paymentDue :hoursAndRate | 
      | hours rate |
      hours := hoursAndRate first.
      rate := hoursAndRate last.
      hoursPaid := hoursToPay min: hours.
      hoursToPay := hoursToPay - hoursPaid.
      paymentDue + (hoursPaid * self payRate * rate) ])
    roundTo: 0.01