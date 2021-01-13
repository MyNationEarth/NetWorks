initialisation
initialize
  super initialize.
  dateAndTime := DateAndTime now.
  user := self session user