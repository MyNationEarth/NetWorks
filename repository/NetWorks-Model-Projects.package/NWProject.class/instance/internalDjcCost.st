Accessing
internalDjcCost
  "Anser the internalDjcCose unless there are time logs, in which case total the amount payable for each log."

  ^ self designTimeLogs isEmpty
    ifTrue: [ internalDjcCost ]
    ifFalse: [ 
      self designTimeLogs
        inject: 0
        into: [ :total :designTimeLog | total + (designTimeLog amountPayable ifNil: [ 0 ]) ] ]